	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0802DC80
sub_0802DC80: @ 0x0802DC80
	push {r4-r6,lr}
	mov r5, #0
	b _0802DD34
_0802DC86:
	add r0, r5, #0
	bl sub_08063C5C
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
	mov r0, #228
	lsl r0, r0, #1
	strh r0, [r4, #54]
	ldr r0, _0802DCB8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802DCCC
	cmp r0, #3
	bgt _0802DCBC
	cmp r0, #2
	beq _0802DCC2
	b _0802DCE2
	.byte 0x00
	.byte 0x00
_0802DCB8:
	.4byte gUnknown_03006C80
_0802DCBC:
	cmp r0, #4
	beq _0802DCD6
	b _0802DCE2
_0802DCC2:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #4
	add r0, r0, #80
	b _0802DCE0
_0802DCCC:
	lsl r0, r5, #2
	add r0, r0, r5
	add r0, r0, #10
	lsl r0, r0, #3
	b _0802DCE0
_0802DCD6:
	lsl r0, r5, #2
	add r0, r0, r5
	add r0, r0, #7
	lsl r0, r0, #3
	add r0, r0, #4
_0802DCE0:
	strh r0, [r4, #50]
_0802DCE2:
	add r3, r5, #0
	add r3, r3, #12
	mov r0, #15
	add r2, r3, #0
	and r2, r2, r0
	ldrb r0, [r4, #30]
	mov r6, #16
	neg r6, r6
	add r1, r6, #0
	and r0, r0, r1
	orr r0, r0, r2
	mov r1, #15
	and r3, r3, r1
	lsl r3, r3, #4
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r4, #30]
	ldr r0, _0802DD44  @ =gLCDRegisterBuffer
	ldrb r0, [r0]
	cmp r5, r0
	bne _0802DD10
	ldr r0, _0802DD48  @ =gUnknown_03000450
	str r4, [r0]
_0802DD10:
	add r0, r5, #0
	mov r1, #255
	mov r2, #0
	bl sub_08063D28
	mov r0, #13
	mov r1, #0
	add r2, r5, #0
	bl sub_0804C8A8
	mov r0, #13
	mov r1, #2
	add r2, r5, #0
	bl sub_0804C8A8
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
_0802DD34:
	ldr r0, _0802DD4C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0802DC86
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DD44:
	.4byte gLCDRegisterBuffer
_0802DD48:
	.4byte gUnknown_03000450
_0802DD4C:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0802DC80

	THUMB_FUNC_START sub_0802DD50
sub_0802DD50: @ 0x0802DD50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r7, r1, #0
	lsl r2, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsr r5, r2, #24
	cmp r5, #0
	beq _0802DDA0
_0802DD68:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	add r4, r0, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	add r7, r0, #0
	add r0, r4, #0
	add r0, r0, #32
	mov r1, r8
	orr r0, r0, r1
	strh r0, [r6]
	add r0, r6, #0
	add r0, r0, #64
	add r4, r4, #64
	orr r4, r4, r1
	strh r4, [r0]
	sub r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	sub r6, r6, #2
	cmp r5, #0
	bne _0802DD68
_0802DDA0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802DD50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802DDAC
sub_0802DDAC: @ 0x0802DDAC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r5, _0802DE28  @ =gUnknown_03000420
	mov r1, #0
	mov r0, #1
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	str r1, [sp]
	ldr r4, _0802DE2C  @ =gBG0Buffer
	ldr r2, _0802DE30  @ =0x01000400
	mov r0, sp
	add r1, r4, #0
	bl CpuFastSet
	ldrb r1, [r5, #3]
	lsl r1, r1, #11
	add r0, r4, #0
	add r0, r0, #44
	add r1, r1, r0
	mov r2, #144
	lsl r2, r2, #3
	add r3, r1, r2
	ldr r6, _0802DE34  @ =0x0000101C
	add r0, r6, #0
	strh r0, [r3]
	add r6, r6, #1
	add r0, r6, #0
	strh r0, [r3, #2]
	mov r0, #152
	lsl r0, r0, #3
	add r3, r1, r0
	add r6, r6, #1
	add r0, r6, #0
	strh r0, [r3]
	ldr r0, _0802DE38  @ =0x000004C2
	add r3, r1, r0
	ldr r1, _0802DE3C  @ =0x0000101F
	add r0, r1, #0
	strh r0, [r3]
	ldrb r0, [r5, #3]
	lsl r0, r0, #11
	add r4, r4, #56
	add r0, r0, r4
	add r2, r0, r2
	ldr r0, _0802DE40  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _0802DE44  @ =0x0001869F
	cmp r1, r0
	bls _0802DE10
	add r1, r0, #0
_0802DE10:
	mov r3, #192
	lsl r3, r3, #6
	add r0, r2, #0
	mov r2, #5
	bl sub_0802DD50
	bl sub_0802C934
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0802DE28:
	.4byte gUnknown_03000420
_0802DE2C:
	.4byte gBG0Buffer
_0802DE30:
	.4byte 0x01000400
_0802DE34:
	.4byte 0x0000101C
_0802DE38:
	.4byte 0x000004C2
_0802DE3C:
	.4byte 0x0000101F
_0802DE40:
	.4byte gUnknown_03006C80
_0802DE44:
	.4byte 0x0001869F
	THUMB_FUNC_END sub_0802DDAC

	THUMB_FUNC_START sub_0802DE48
sub_0802DE48: @ 0x0802DE48
	push {r4-r7,lr}
	ldr r6, _0802DE64  @ =gUnknown_02016D78
	ldr r7, _0802DE68  @ =gUnknown_03006C80
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0802DE6C
	strh r0, [r6]
	add r6, r6, #2
	strh r0, [r6]
	add r6, r6, #2
	strh r0, [r6]
	strh r0, [r6, #2]
	b _0802DEAE
	.byte 0x00
	.byte 0x00
_0802DE64:
	.4byte gUnknown_02016D78
_0802DE68:
	.4byte gUnknown_03006C80
_0802DE6C:
	lsl r0, r0, #4
	bl Sqrt
	ldr r4, _0802DEB4  @ =0x0000FFFC
	and r4, r4, r0
	ldr r0, [r7, #12]
	mul r0, r4, r0
	ldr r5, [r7, #8]
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #16]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #20]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #24]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
_0802DEAE:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802DEB4:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_0802DE48

	THUMB_FUNC_START sub_0802DEB8
sub_0802DEB8: @ 0x0802DEB8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _0802DF9C  @ =gUnknown_03000520
	ldrb r7, [r0]
	cmp r7, #0
	bne _0802DF8E
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r8, r0
	ldr r1, _0802DFA0  @ =0x00006739
	add r0, r1, #0
	mov r1, r8
	strh r0, [r1]
	ldr r6, _0802DFA4  @ =gPaletteBuf2
	mov r1, #0
	mov r9, r1
	mov r4, r9
	orr r4, r4, r0
	strh r4, [r6]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0800BEC4
	ldr r5, _0802DFA8  @ =gUnknown_02016D60
	add r0, r5, #0
	mov r1, #40
	bl zero_memory
	ldr r0, _0802DFAC  @ =gUnknown_03000830
	mov r1, r9
	strb r1, [r0]
	mov r0, #20
	bl load_palette_from_gfx_group
	mov r0, r8
	strh r4, [r0]
	strh r4, [r6]
	mov r0, #1
	bl load_gfx_group
	mov r0, #35
	bl load_gfx_group
	ldr r0, _0802DFB0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	add r0, r0, #34
	bl load_gfx_group
	bl sub_0802DC80
	bl sub_0802DDAC
	bl sub_0802DE48
	bl sub_0802E5E0
	mov r0, #5
	bl sub_08036704
	ldr r2, _0802DFB4  @ =gUnknown_030004A0
	add r1, r2, #0
	add r1, r1, #102
	mov r0, #253
	lsl r0, r0, #6
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _0802DFB8  @ =0x0000070C
	strh r0, [r1]
	ldr r0, _0802DFBC  @ =0x00001B4C
	strh r0, [r2, #8]
	ldr r0, _0802DFC0  @ =0x00009E42
	strh r0, [r2, #32]
	ldr r0, _0802DFC4  @ =0x00009C43
	strh r0, [r2, #44]
	strh r7, [r2, #12]
	strh r7, [r2, #10]
	strh r7, [r2, #34]
	mov r1, #176
	lsl r1, r1, #1
	strh r1, [r2, #36]
	strh r7, [r2, #46]
	strh r1, [r2, #48]
	ldr r0, _0802DFC8  @ =gUnknown_03000450
	strh r7, [r0, #32]
	strh r1, [r0, #34]
	mov r0, #234
	lsl r0, r0, #5
	strh r0, [r2]
	add r5, r5, #39
	mov r1, r9
	strb r1, [r5]
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	ldr r1, _0802DFCC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0802DF8E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DF9C:
	.4byte gUnknown_03000520
_0802DFA0:
	.4byte 0x00006739
_0802DFA4:
	.4byte gPaletteBuf2
_0802DFA8:
	.4byte gUnknown_02016D60
_0802DFAC:
	.4byte gUnknown_03000830
_0802DFB0:
	.4byte gUnknown_03006C80
_0802DFB4:
	.4byte gUnknown_030004A0
_0802DFB8:
	.4byte 0x0000070C
_0802DFBC:
	.4byte 0x00001B4C
_0802DFC0:
	.4byte 0x00009E42
_0802DFC4:
	.4byte 0x00009C43
_0802DFC8:
	.4byte gUnknown_03000450
_0802DFCC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802DEB8

	THUMB_FUNC_START sub_0802DFD0
sub_0802DFD0: @ 0x0802DFD0
	push {r4,lr}
	ldr r0, _0802E010  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _0802E020
	ldrh r0, [r1, #54]
	sub r0, r0, #80
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r0, #0
	bge _0802DFEA
	mov r1, #0
_0802DFEA:
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r2, #176
	lsl r2, r2, #1
	cmp r0, r2
	ble _0802DFF8
	add r1, r2, #0
_0802DFF8:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r2, [r4, r0]
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r2, r0
	beq _0802E018
	add r1, r4, #0
	cmp r2, r0
	bge _0802E014
	add r0, r3, #1
	b _0802E016
_0802E010:
	.4byte gUnknown_03000450
_0802E014:
	sub r0, r3, #1
_0802E016:
	strh r0, [r1, #34]
_0802E018:
	ldr r1, _0802E028  @ =gUnknown_030004A0
	ldrh r0, [r4, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
_0802E020:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E028:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_0802DFD0

	THUMB_FUNC_START sub_0802E02C
sub_0802E02C: @ 0x0802E02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r6, _0802E058  @ =gUnknown_02016D78
	bl 0x08137AFC
	bl sub_0802DFD0
	bl 0x08000BAC
	ldr r3, _0802E05C  @ =gSubState
	ldrb r0, [r3]
	cmp r0, #1
	beq _0802E08A
	cmp r0, #1
	bgt _0802E060
	cmp r0, #0
	beq _0802E06E
	b _0802E192
	.byte 0x00
	.byte 0x00
_0802E058:
	.4byte gUnknown_02016D78
_0802E05C:
	.4byte gSubState
_0802E060:
	cmp r0, #2
	bne _0802E066
	b _0802E160
_0802E066:
	cmp r0, #3
	bne _0802E06C
	b _0802E180
_0802E06C:
	b _0802E192
_0802E06E:
	ldr r0, _0802E0E0  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _0802E078
	b _0802E192
_0802E078:
	mov r0, #1
	strb r0, [r3]
	add r0, r6, #0
	sub r0, r0, #24
	str r1, [r0, #12]
	str r1, [r0, #16]
	ldr r0, _0802E0E4  @ =0x00000195
	bl play_sound
_0802E08A:
	ldr r0, _0802E0E8  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802E09C
	mov r0, #8
	bl play_sound
_0802E09C:
	mov r4, #0
	ldr r0, _0802E0EC  @ =gUnknown_03006C80
	mov r10, r0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0802E134
	ldr r5, _0802E0F0  @ =gUnknown_03006A30
	mov r1, #40
	add r1, r1, r5
	mov r9, r1
	mov r3, #16
	neg r3, r3
	mov r8, r3
_0802E0B6:
	lsl r0, r4, #1
	add r3, r0, r6
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802E0FA
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r1, [r0]
	ldrh r2, [r1, #54]
	mov r7, #54
	ldrsh r0, [r1, r7]
	cmp r0, r8
	ble _0802E0F4
	sub r0, r2, #1
	strh r0, [r1, #54]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	b _0802E126
_0802E0E0:
	.4byte gUnknown_03000520
_0802E0E4:
	.4byte 0x00000195
_0802E0E8:
	.4byte gUnknown_03000948
_0802E0EC:
	.4byte gUnknown_03006C80
_0802E0F0:
	.4byte gUnknown_03006A30
_0802E0F4:
	mov r0, #0
	strh r0, [r3]
	b _0802E126
_0802E0FA:
	ldr r3, _0802E154  @ =gUnknown_02016D60
	mov r2, #1
	lsl r2, r2, r4
	ldr r1, [r3, #12]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0802E126
	orr r1, r1, r2
	str r1, [r3, #12]
	ldr r0, [r3, #16]
	add r0, r0, #1
	str r0, [r3, #16]
	mov r0, #9
	bl play_sound
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	mov r1, #2
	strb r1, [r0, #12]
_0802E126:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _0802E158  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0802E0B6
_0802E134:
	ldr r2, _0802E154  @ =gUnknown_02016D60
	ldr r0, [r2, #16]
	mov r1, r10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802E192
	ldr r1, _0802E15C  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #180
	strh r0, [r2, #4]
	add r0, r0, #226
	bl play_sound
	b _0802E192
_0802E154:
	.4byte gUnknown_02016D60
_0802E158:
	.4byte gUnknown_03006C80
_0802E15C:
	.4byte gSubState
_0802E160:
	add r1, r6, #0
	sub r1, r1, #24
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E192
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	b _0802E192
_0802E180:
	ldr r0, _0802E1A0  @ =gUnknown_03000520
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802E192
	ldr r1, _0802E1A4  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r2, [r3]
_0802E192:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802E1A0:
	.4byte gUnknown_03000520
_0802E1A4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E02C

	THUMB_FUNC_START sub_0802E1A8
sub_0802E1A8: @ 0x0802E1A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _0802E210  @ =gUnknown_02016D60
	ldr r6, [r0, #8]
	mov r2, #8
	ldr r0, _0802E214  @ =gUnknown_03006C80
	mov r12, r0
	ldr r4, _0802E218  @ =gUnknown_0202A3F0
	mov r3, #255
_0802E1C2:
	lsl r1, r2, #24
	asr r1, r1, #24
	lsl r2, r1, #2
	add r2, r2, r4
	ldrb r0, [r2]
	orr r0, r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #1]
	orr r0, r0, r3
	strb r0, [r2, #1]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r2, r1, #24
	asr r1, r1, #24
	cmp r1, #15
	ble _0802E1C2
	mov r2, #1
	mov r1, r12
	ldrb r1, [r1]
	cmp r2, r1
	bge _0802E25A
_0802E1EC:
	lsl r2, r2, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r6
	ldr r7, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r4, r1, #24
	lsl r3, r4, #24
	asr r0, r3, #24
	mov r8, r2
	cmp r0, #0
	blt _0802E240
	lsl r0, r0, #2
	add r0, r0, r6
	lsl r5, r7, #16
	b _0802E238
	.byte 0x00
	.byte 0x00
_0802E210:
	.4byte gUnknown_02016D60
_0802E214:
	.4byte gUnknown_03006C80
_0802E218:
	.4byte gUnknown_0202A3F0
_0802E21C:
	asr r0, r3, #24
	lsl r1, r0, #2
	add r1, r1, r6
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r3, r4, #24
	asr r0, r3, #24
	cmp r0, #0
	blt _0802E240
	lsl r0, r0, #2
	add r0, r0, r6
_0802E238:
	ldrb r1, [r0, #1]
	lsr r0, r5, #24
	cmp r1, r0
	bhi _0802E21C
_0802E240:
	lsl r0, r4, #24
	asr r0, r0, #22
	add r0, r0, r6
	str r7, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r8
	lsr r2, r0, #24
	asr r0, r0, #24
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	blt _0802E1EC
_0802E25A:
	mov r0, r12
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r6
	sub r0, r0, #4
	ldrb r0, [r0, #1]
	str r0, [sp]
	mov r2, #0
	cmp r2, r1
	bge _0802E342
	ldr r1, _0802E2B8  @ =gUnknown_03006A30
	add r1, r1, #40
	mov r9, r1
	ldr r3, _0802E2BC  @ =gUnknown_084277F8
	mov r10, r3
	mov r7, #204
	lsl r7, r7, #1
	mov r5, r12
_0802E27E:
	lsl r0, r2, #24
	asr r1, r0, #22
	add r4, r1, r6
	ldrb r1, [r4, #1]
	mov r8, r0
	cmp r1, #0
	bne _0802E2C0
	ldrb r0, [r4]
	mov r1, #255
	mov r2, #0
	bl sub_08063D28
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	strh r7, [r2, #54]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0802E318
	ldrb r2, [r4]
	mov r0, #13
	mov r1, #8
	bl sub_0804C8A8
	b _0802E318
	.byte 0x00
	.byte 0x00
_0802E2B8:
	.4byte gUnknown_03006A30
_0802E2BC:
	.4byte gUnknown_084277F8
_0802E2C0:
	ldrb r3, [r4, #1]
	ldr r1, [sp]
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r3, r0
	bne _0802E2F8
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r3, _0802E2F4  @ =gUnknown_03006A30
	add r0, r0, r3
	mov r1, #7
	strb r1, [r0, #12]
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, #2
	b _0802E30E
	.byte 0x00
	.byte 0x00
_0802E2F4:
	.4byte gUnknown_03006A30
_0802E2F8:
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, r3
	sub r0, r0, #1
_0802E30E:
	lsl r0, r0, #1
	add r0, r0, r10
	ldrh r0, [r0]
	add r0, r0, r7
	strh r0, [r2, #54]
_0802E318:
	mov r0, r8
	asr r4, r0, #24
	lsl r0, r4, #2
	add r0, r0, r6
	ldrb r2, [r0, #1]
	lsl r2, r2, #4
	ldrb r0, [r0]
	orr r2, r2, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r0, #13
	mov r1, #9
	bl sub_0804C8A8
	add r4, r4, #1
	lsl r4, r4, #24
	lsr r2, r4, #24
	asr r4, r4, #24
	ldrb r1, [r5]
	cmp r4, r1
	blt _0802E27E
_0802E342:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802E1A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802E354
sub_0802E354: @ 0x0802E354
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r5, _0802E36C  @ =gSubState
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802E3EC
	cmp r0, #1
	bgt _0802E370
	cmp r0, #0
	beq _0802E37A
	b _0802E4A4
	.byte 0x00
	.byte 0x00
_0802E36C:
	.4byte gSubState
_0802E370:
	cmp r0, #2
	beq _0802E3FC
	cmp r0, #3
	beq _0802E428
	b _0802E4A4
_0802E37A:
	ldr r0, _0802E3D4  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802E384
	b _0802E4AC
_0802E384:
	bl sub_0802E1A8
	ldr r0, _0802E3D8  @ =gUnknown_02016D60
	add r0, r0, #39
	mov r1, #1
	strb r1, [r0]
	ldr r1, _0802E3DC  @ =gUnknown_030004A0
	mov r0, #226
	lsl r0, r0, #5
	strh r0, [r1]
	strh r4, [r1, #34]
	mov r2, #168
	lsl r2, r2, #1
	strh r2, [r1, #36]
	strh r4, [r1, #46]
	strh r2, [r1, #48]
	ldr r0, _0802E3E0  @ =gUnknown_03000450
	strh r4, [r0, #32]
	strh r2, [r0, #34]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r2, _0802E3E4  @ =gUnknown_03000E20
	ldr r0, _0802E3E8  @ =gUnknown_03006C80
	ldrb r0, [r0, #2]
	mov r3, #165
	lsl r3, r3, #2
	add r1, r3, #0
	cmp r0, #0
	beq _0802E3C6
	mov r0, #150
	lsl r0, r0, #1
	add r1, r0, #0
_0802E3C6:
	strh r1, [r2, #2]
	mov r0, #0
	mov r1, #4
	bl sub_0800C0B0
	b _0802E4A4
	.byte 0x00
	.byte 0x00
_0802E3D4:
	.4byte gUnknown_03000520
_0802E3D8:
	.4byte gUnknown_02016D60
_0802E3DC:
	.4byte gUnknown_030004A0
_0802E3E0:
	.4byte gUnknown_03000450
_0802E3E4:
	.4byte gUnknown_03000E20
_0802E3E8:
	.4byte gUnknown_03006C80
_0802E3EC:
	ldr r0, _0802E3F8  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E4AC
	mov r0, #2
	b _0802E4A2
_0802E3F8:
	.4byte gUnknown_03000520
_0802E3FC:
	ldr r1, _0802E420  @ =gUnknown_03000E20
	ldrh r0, [r1, #2]
	sub r0, r0, #1
	strh r0, [r1, #2]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E4A4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, _0802E424  @ =0x80040000
	bl play_sound
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	b _0802E4A4
_0802E420:
	.4byte gUnknown_03000E20
_0802E424:
	.4byte 0x80040000
_0802E428:
	ldr r0, _0802E480  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _0802E4AC
	ldr r0, _0802E484  @ =0x80010000
	bl play_sound
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _0802E488  @ =gPaletteBuf2
	strh r4, [r0]
	str r4, [sp]
	mov r1, #192
	lsl r1, r1, #19
	ldr r2, _0802E48C  @ =0x01006000
	mov r0, sp
	bl CpuFastSet
	ldr r4, _0802E490  @ =gUnknown_03006C80
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0802E498
	mov r0, #2
	bl set_main_state
	ldr r1, _0802E494  @ =gUnknown_03005050
	mov r0, #1
	strb r0, [r1]
	add r1, r4, #0
	add r1, r1, #79
	mov r0, #40
	strb r0, [r1]
	bl sub_08039D64
	b _0802E4A4
_0802E480:
	.4byte gUnknown_03000520
_0802E484:
	.4byte 0x80010000
_0802E488:
	.4byte gPaletteBuf2
_0802E48C:
	.4byte 0x01006000
_0802E490:
	.4byte gUnknown_03006C80
_0802E494:
	.4byte gUnknown_03005050
_0802E498:
	ldr r0, _0802E4B4  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
_0802E4A2:
	strb r0, [r5]
_0802E4A4:
	bl 0x08137AFC
	bl 0x08000BAC
_0802E4AC:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0802E4B4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E354

	THUMB_FUNC_START sub_0802E4B8
sub_0802E4B8: @ 0x0802E4B8
	push {r4,lr}
	sub sp, sp, #24
	ldr r4, _0802E4D0  @ =gSubState
	ldrb r0, [r4]
	cmp r0, #1
	beq _0802E57C
	cmp r0, #1
	bgt _0802E4D4
	cmp r0, #0
	beq _0802E4DA
	b _0802E5CC
	.byte 0x00
	.byte 0x00
_0802E4D0:
	.4byte gSubState
_0802E4D4:
	cmp r0, #2
	beq _0802E5AC
	b _0802E5CC
_0802E4DA:
	mov r0, #21
	bl load_palette_from_gfx_group
	mov r0, #0
	mov r1, #0
	bl set_palette_color
	ldr r0, _0802E50C  @ =gUnknown_08427818
	ldr r2, _0802E510  @ =0x04000006
	mov r1, sp
	bl CpuSet
	ldr r0, _0802E514  @ =gLCDRegisterBuffer
	ldrb r0, [r0]
	bl sub_08039AA0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802E51C
	mov r1, sp
	mov r0, #35
	strb r0, [r1, #18]
	ldr r0, _0802E518  @ =0x0000041E
	b _0802E524
	.byte 0x00
	.byte 0x00
_0802E50C:
	.4byte gUnknown_08427818
_0802E510:
	.4byte 0x04000006
_0802E514:
	.4byte gLCDRegisterBuffer
_0802E518:
	.4byte 0x0000041E
_0802E51C:
	mov r1, sp
	mov r0, #3
	strb r0, [r1, #18]
	ldr r0, _0802E568  @ =0x0000040C
_0802E524:
	bl sub_0800F4C4
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r0, #121
	bl play_sound
	ldr r1, _0802E56C  @ =gUnknown_030004A0
	mov r0, #0
	strh r0, [r1, #10]
	lsl r0, r4, #2
	sub r0, r0, #72
	strh r0, [r1, #12]
	ldr r0, _0802E570  @ =gUnknown_08142374
	ldrh r0, [r0, #36]
	strh r0, [r1, #8]
	ldrh r2, [r1]
	mov r3, #128
	lsl r3, r3, #1
	add r0, r3, #0
	orr r0, r0, r2
	strh r0, [r1]
	mov r0, #0
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802E574  @ =gUnknown_02016D60
	mov r0, #120
	strh r0, [r1, #4]
	ldr r1, _0802E578  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802E5CC
_0802E568:
	.4byte 0x0000040C
_0802E56C:
	.4byte gUnknown_030004A0
_0802E570:
	.4byte gUnknown_08142374
_0802E574:
	.4byte gUnknown_02016D60
_0802E578:
	.4byte gSubState
_0802E57C:
	ldr r0, _0802E5A4  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E5CC
	ldr r1, _0802E5A8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E5CC
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802E5CC
	.byte 0x00
	.byte 0x00
_0802E5A4:
	.4byte gUnknown_03000520
_0802E5A8:
	.4byte gUnknown_02016D60
_0802E5AC:
	ldr r0, _0802E5D4  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E5CC
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _0802E5D8  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _0802E5DC  @ =gPaletteBuf2
	strh r1, [r0]
	mov r0, #5
	bl set_main_state
_0802E5CC:
	add sp, sp, #24
	pop {r4}
	pop {r0}
	bx r0
_0802E5D4:
	.4byte gUnknown_03000520
_0802E5D8:
	.4byte 0x00006739
_0802E5DC:
	.4byte gPaletteBuf2
	THUMB_FUNC_END sub_0802E4B8

	THUMB_FUNC_START sub_0802E5E0
sub_0802E5E0: @ 0x0802E5E0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r0, #16
	bl sub_0800BD14
	add r5, r0, #0
	ldr r0, _0802E650  @ =gUnknown_02016D60
	str r5, [r0, #8]
	cmp r5, #0
	bne _0802E5F8
	b _0802E744
_0802E5F8:
	mov r3, #0
	ldr r0, _0802E654  @ =gUnknown_03006C80
	mov r8, r0
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802E62C
	mov r7, #0
	mov r6, r8
	mov r4, r8
	add r4, r4, #12
_0802E60C:
	lsl r1, r3, #24
	asr r1, r1, #24
	lsl r0, r1, #2
	add r2, r0, r5
	strb r3, [r2]
	strb r7, [r2, #1]
	add r0, r0, r4
	ldr r0, [r0]
	strh r0, [r2, #2]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	asr r1, r1, #24
	ldrb r2, [r6]
	cmp r1, r2
	blt _0802E60C
_0802E62C:
	mov r3, #1
	mov r4, r8
	ldrb r4, [r4]
	cmp r3, r4
	bge _0802E696
_0802E636:
	lsl r2, r3, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r5
	ldr r6, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	mov r12, r2
	b _0802E66C
	.byte 0x00
	.byte 0x00
_0802E650:
	.4byte gUnknown_02016D60
_0802E654:
	.4byte gUnknown_03006C80
_0802E658:
	asr r0, r4, #24
	lsl r1, r0, #2
	add r1, r1, r5
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r4, r3, #24
	asr r0, r4, #24
_0802E66C:
	cmp r0, #0
	blt _0802E67C
	lsl r0, r0, #2
	add r0, r0, r5
	ldrh r1, [r0, #2]
	lsr r0, r6, #16
	cmp r1, r0
	bcc _0802E658
_0802E67C:
	lsl r0, r3, #24
	asr r0, r0, #22
	add r0, r0, r5
	str r6, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r12
	lsr r3, r0, #24
	asr r0, r0, #24
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	blt _0802E636
_0802E696:
	mov r2, #1
	mov r3, #1
	mov r4, r8
	ldrb r4, [r4]
	cmp r3, r4
	bge _0802E6D4
_0802E6A2:
	lsl r0, r3, #24
	asr r1, r0, #22
	add r3, r1, r5
	sub r4, r3, #4
	ldrh r1, [r3, #2]
	mov r12, r0
	ldrh r0, [r4, #2]
	cmp r1, r0
	bne _0802E6BA
	ldrb r0, [r4, #1]
	strb r0, [r3, #1]
	b _0802E6BC
_0802E6BA:
	strb r2, [r3, #1]
_0802E6BC:
	mov r1, #128
	lsl r1, r1, #17
	add r1, r1, r12
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsr r3, r1, #24
	asr r1, r1, #24
	mov r4, r8
	ldrb r4, [r4]
	cmp r1, r4
	blt _0802E6A2
_0802E6D4:
	mov r3, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802E744
_0802E6DE:
	lsl r2, r3, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r5
	ldr r6, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	mov r12, r2
	cmp r0, #0
	blt _0802E72A
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r1, [r0]
	lsl r0, r6, #24
	lsr r0, r0, #24
	cmp r1, r0
	bls _0802E72A
	add r7, r0, #0
_0802E708:
	asr r0, r4, #24
	lsl r1, r0, #2
	add r1, r1, r5
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	cmp r0, #0
	blt _0802E72A
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r7
	bhi _0802E708
_0802E72A:
	lsl r0, r3, #24
	asr r0, r0, #22
	add r0, r0, r5
	str r6, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r12
	lsr r3, r0, #24
	asr r0, r0, #24
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	blt _0802E6DE
_0802E744:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802E5E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802E750
sub_0802E750: @ 0x0802E750
	lsl r0, r0, #24
	ldr r1, _0802E760  @ =gUnknown_02016D60
	ldr r1, [r1, #8]
	lsr r0, r0, #22
	add r0, r0, r1
	ldrb r0, [r0, #1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802E760:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802E750

	THUMB_FUNC_START sub_0802E764
sub_0802E764: @ 0x0802E764
	push {lr}
	bl 0x0800099C
	ldr r1, _0802E784  @ =gUnknown_08427830
	ldr r0, _0802E788  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_0802E904
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E784:
	.4byte gUnknown_08427830
_0802E788:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E764

	THUMB_FUNC_START sub_0802E78C
sub_0802E78C: @ 0x0802E78C
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r7, _0802E8A8  @ =gUnknown_03000520
	ldrb r6, [r7]
	cmp r6, #0
	beq _0802E79A
	b _0802E8A0
_0802E79A:
	ldr r0, _0802E8AC  @ =gUnknown_03000830
	strb r6, [r0]
	ldr r0, _0802E8B0  @ =0x80010000
	bl play_sound
	ldr r0, _0802E8B4  @ =0x800B01AD
	bl play_sound
	bl sub_0800BED8
	bl sub_08059A44
	bl sub_080123BC
	bl sub_0801239C
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_0803A2E8
	bl sub_0800D6F4
	bl sub_0804CCBC
	mov r0, sp
	mov r4, #0
	strh r6, [r0]
	ldr r5, _0802E8B8  @ =gUnknown_02016D60
	ldr r2, _0802E8BC  @ =0x01000014
	add r1, r5, #0
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _0802E8C0  @ =gUnknown_03006A30
	ldr r2, _0802E8C4  @ =0x05000090
	bl CpuSet
	mov r0, #23
	bl load_palette_from_gfx_group
	mov r0, #1
	bl load_gfx_group
	mov r0, #2
	bl load_gfx_group
	mov r0, #18
	bl sub_0802C2DC
	ldr r0, _0802E8C8  @ =gUnknown_0202A4F8
	str r6, [r0]
	ldr r0, _0802E8CC  @ =gLCDRegisterBuffer
	strb r4, [r0]
	ldr r0, _0802E8D0  @ =gUnknown_03000420
	strb r4, [r0]
	strb r4, [r0, #3]
	ldr r2, _0802E8D4  @ =gUnknown_030004A0
	ldr r0, _0802E8D8  @ =gBG0Buffer
	str r0, [r2, #16]
	ldr r0, _0802E8DC  @ =gUnknown_08142374
	ldrh r0, [r0, #36]
	strh r0, [r2, #8]
	ldr r0, _0802E8E0  @ =0x00001A09
	strh r0, [r2, #20]
	ldr r0, _0802E8E4  @ =0x00009E0A
	strh r0, [r2, #32]
	ldr r0, _0802E8E8  @ =0x00009C03
	strh r0, [r2, #44]
	add r1, r2, #0
	add r1, r1, #102
	ldr r0, _0802E8EC  @ =0x00003E66
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _0802E8F0  @ =0x00000C0C
	strh r0, [r1]
	strh r6, [r2, #34]
	strh r6, [r2, #24]
	strh r6, [r2, #22]
	strh r6, [r2, #12]
	strh r6, [r2, #10]
	mov r1, #192
	strh r1, [r2, #36]
	strh r6, [r2, #46]
	strh r1, [r2, #48]
	ldr r0, _0802E8F4  @ =gUnknown_03000450
	strh r6, [r0, #32]
	strh r1, [r0, #34]
	ldrh r0, [r2]
	mov r3, #216
	lsl r3, r3, #5
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802E8F8  @ =gUnknown_0200B310
	str r6, [r0]
	bl sub_0802C934
	ldr r1, _0802E8FC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _0802E900  @ =gSubState
	strb r4, [r0]
	mov r0, #180
	strb r0, [r5, #9]
	strb r4, [r5, #10]
	strb r4, [r5, #11]
	strb r4, [r5, #12]
	sub r0, r0, #181
	str r0, [r7, #12]
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	mov r0, #25
	strb r0, [r7, #7]
	add r0, r0, #231
	bl sub_0800C1EC
	mov r0, #90
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #120
	strh r1, [r0, #50]
	mov r1, #224
	strh r1, [r0, #54]
_0802E8A0:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0802E8A8:
	.4byte gUnknown_03000520
_0802E8AC:
	.4byte gUnknown_03000830
_0802E8B0:
	.4byte 0x80010000
_0802E8B4:
	.4byte 0x800B01AD
_0802E8B8:
	.4byte gUnknown_02016D60
_0802E8BC:
	.4byte 0x01000014
_0802E8C0:
	.4byte gUnknown_03006A30
_0802E8C4:
	.4byte 0x05000090
_0802E8C8:
	.4byte gUnknown_0202A4F8
_0802E8CC:
	.4byte gLCDRegisterBuffer
_0802E8D0:
	.4byte gUnknown_03000420
_0802E8D4:
	.4byte gUnknown_030004A0
_0802E8D8:
	.4byte gBG0Buffer
_0802E8DC:
	.4byte gUnknown_08142374
_0802E8E0:
	.4byte 0x00001A09
_0802E8E4:
	.4byte 0x00009E0A
_0802E8E8:
	.4byte 0x00009C03
_0802E8EC:
	.4byte 0x00003E66
_0802E8F0:
	.4byte 0x00000C0C
_0802E8F4:
	.4byte gUnknown_03000450
_0802E8F8:
	.4byte gUnknown_0200B310
_0802E8FC:
	.4byte gUnknown_03005050
_0802E900:
	.4byte gSubState
	THUMB_FUNC_END sub_0802E78C

	THUMB_FUNC_START sub_0802E904
sub_0802E904: @ 0x0802E904
	push {r4,r5,lr}
	ldr r0, _0802E930  @ =gUnknown_02016D60
	ldrb r1, [r0, #11]
	add r4, r0, #0
	cmp r1, #0
	bne _0802E9A0
	ldr r2, _0802E934  @ =gUnknown_03000948
	ldrh r1, [r2]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802E924
	ldr r1, _0802E938  @ =gUnknown_030004A0
	ldrh r0, [r1, #22]
	add r0, r0, #1
	strh r0, [r1, #22]
_0802E924:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0802E93C
	sub r0, r0, #1
	strb r0, [r4, #9]
	b _0802E9A0
_0802E930:
	.4byte gUnknown_02016D60
_0802E934:
	.4byte gUnknown_03000948
_0802E938:
	.4byte gUnknown_030004A0
_0802E93C:
	ldrh r1, [r2]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0802E9A0
	ldr r5, _0802E970  @ =gUnknown_0842783C
	ldrb r2, [r4, #10]
	lsl r0, r2, #1
	add r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _0802E974  @ =0x0000FFFF
	cmp r1, r0
	beq _0802E97C
	add r3, r2, #0
	cmp r3, #255
	beq _0802E97C
	ldr r1, _0802E978  @ =gUnknown_030004A0
	add r0, r2, #1
	strb r0, [r4, #10]
	lsl r0, r3, #1
	add r0, r0, r5
	ldrh r0, [r0]
	add r1, r1, #104
	strh r0, [r1]
	b _0802E9A0
	.byte 0x00
	.byte 0x00
_0802E970:
	.4byte gUnknown_0842783C
_0802E974:
	.4byte 0x0000FFFF
_0802E978:
	.4byte gUnknown_030004A0
_0802E97C:
	ldr r2, _0802E9A8  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _0802E9AC  @ =0x0000FDFF
	and r0, r0, r1
	mov r3, #128
	lsl r3, r3, #3
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r1, r2, #0
	add r1, r1, #102
	ldr r0, _0802E9B0  @ =0x00003C64
	strh r0, [r1]
	add r2, r2, #104
	ldr r0, _0802E9B4  @ =0x00000808
	strh r0, [r2]
	mov r0, #1
	strb r0, [r4, #11]
_0802E9A0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E9A8:
	.4byte gUnknown_030004A0
_0802E9AC:
	.4byte 0x0000FDFF
_0802E9B0:
	.4byte 0x00003C64
_0802E9B4:
	.4byte 0x00000808
	THUMB_FUNC_END sub_0802E904

	THUMB_FUNC_START sub_0802E9B8
sub_0802E9B8: @ 0x0802E9B8
	push {r4,r5,lr}
	ldr r5, _0802EA04  @ =gUnknown_02016D60
	ldrb r0, [r5, #11]
	cmp r0, #0
	beq _0802E9FE
	ldr r0, _0802EA08  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E9FE
	ldr r0, _0802EA0C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r4, #3
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0802E9F6
	bl 0x0800099C
	add r1, r0, #0
	ldr r2, _0802EA10  @ =0x03000030
	and r1, r1, r4
	lsl r1, r1, #5
	mov r0, #150
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, [r2]
	add r0, r0, r1
	mov r1, #15
	mov r2, #1
	bl load_palette
_0802E9F6:
	ldrb r0, [r5, #12]
	lsl r0, r0, #4
	bl sub_0800C1EC
_0802E9FE:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802EA04:
	.4byte gUnknown_02016D60
_0802EA08:
	.4byte gUnknown_03000520
_0802EA0C:
	.4byte gUnknown_03000948
_0802EA10:
	.4byte 0x03000030
	THUMB_FUNC_END sub_0802E9B8

	THUMB_FUNC_START sub_0802EA14
sub_0802EA14: @ 0x0802EA14
	push {r4,lr}
	ldr r1, _0802EA78  @ =gUnknown_08427858
	ldr r4, _0802EA7C  @ =gSubState
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_0802BFC4
	bl sub_0802E9B8
	ldr r0, _0802EA80  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802EA72
	ldr r0, _0802EA84  @ =0x80010000
	bl play_sound
	ldr r1, _0802EA88  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802EA8C  @ =gUnknown_02016D60
	mov r2, #0
	strb r2, [r1, #9]
	mov r0, #255
	strb r0, [r1, #10]
	ldr r1, _0802EA90  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	strb r2, [r4]
	ldr r1, _0802EA94  @ =0x00006739
	mov r0, #0
	bl set_palette_color
	mov r0, #3
	mov r1, #32
	bl sub_0800C0B0
_0802EA72:
	pop {r4}
	pop {r0}
	bx r0
_0802EA78:
	.4byte gUnknown_08427858
_0802EA7C:
	.4byte gSubState
_0802EA80:
	.4byte gNewKeys
_0802EA84:
	.4byte 0x80010000
_0802EA88:
	.4byte gUnknown_03000520
_0802EA8C:
	.4byte gUnknown_02016D60
_0802EA90:
	.4byte gUnknown_03005050
_0802EA94:
	.4byte 0x00006739
	THUMB_FUNC_END sub_0802EA14

	THUMB_FUNC_START sub_0802EA98
sub_0802EA98: @ 0x0802EA98
	push {r4,r5,lr}
	ldr r0, _0802EAB0  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r5, r0, #0
	cmp r1, #10
	bls _0802EAA6
	b _0802ED84
_0802EAA6:
	lsl r0, r1, #2
	ldr r1, _0802EAB4  @ =0x0802EAB8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802EAB0:
	.4byte gUnknown_02016D60
_0802EAB4:
	.4byte 0x0802EAB8
	.4byte _0802EAE4
	.4byte _0802EB68
	.4byte _0802EB98
	.4byte _0802EBAC
	.4byte _0802EC0C
	.4byte _0802EC40
	.4byte _0802EC50
	.4byte _0802ECA4
	.4byte _0802ECCC
	.4byte _0802ED14
	.4byte _0802ED64
_0802EAE4:
	ldr r0, _0802EB5C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802EAEE
	b _0802ED84
_0802EAEE:
	mov r0, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	mov r1, #0
	mov r0, #104
	strh r0, [r2, #50]
	mov r0, #200
	lsl r0, r0, #1
	strh r0, [r2, #54]
	add r0, r2, #0
	add r0, r0, #42
	strb r1, [r0]
	ldrb r1, [r2, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #31]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r2, r2, #94
	ldrb r1, [r2]
	sub r0, r0, #16
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #93
	mov r1, #0
	mov r2, #0
	bl sub_0804CCE4
	ldr r0, _0802EB60  @ =gUnknown_0202A7E0
	ldr r2, [r0, #12]
	mov r0, #136
	strh r0, [r2, #50]
	mov r0, #196
	lsl r0, r0, #1
	strh r0, [r2, #54]
	ldr r1, _0802EB64  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EB5C:
	.4byte gUnknown_03000520
_0802EB60:
	.4byte gUnknown_0202A7E0
_0802EB64:
	.4byte gUnknown_02016D60
_0802EB68:
	ldrb r4, [r5, #9]
	cmp r4, #0
	beq _0802EB70
	b _0802ED84
_0802EB70:
	mov r0, #0
	mov r1, #104
	mov r2, #0
	bl sub_08063D28
	ldr r1, _0802EB94  @ =gUnknown_0202A7E0
	mov r0, #2
	strb r0, [r1, #4]
	mov r0, #224
	strb r0, [r1, #5]
	strb r4, [r1, #6]
	ldr r0, [r1, #12]
	add r0, r0, #42
	strb r4, [r0]
	ldr r1, [r1, #12]
	mov r0, #128
	str r0, [r1, #12]
	b _0802ED00
_0802EB94:
	.4byte gUnknown_0202A7E0
_0802EB98:
	ldr r0, _0802EBA8  @ =gUnknown_0202A7E0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0802EBA2
	b _0802ED84
_0802EBA2:
	mov r0, #60
	strh r0, [r5, #4]
	b _0802ED00
_0802EBA8:
	.4byte gUnknown_0202A7E0
_0802EBAC:
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne _0802EBB4
	b _0802ED84
_0802EBB4:
	ldrh r0, [r5, #4]
	cmp r0, #8
	bne _0802EBC4
	ldr r0, _0802EC00  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
_0802EBC4:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EBD2
	b _0802ED84
_0802EBD2:
	ldr r0, _0802EC04  @ =0x00000501
	bl sub_0800D67C
	ldr r3, _0802EC08  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802EC00  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #4
	strb r1, [r0]
	b _0802ED00
_0802EC00:
	.4byte gUnknown_0202A7E0
_0802EC04:
	.4byte 0x00000501
_0802EC08:
	.4byte gUnknown_02000010
_0802EC0C:
	ldr r0, _0802EC38  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	beq _0802EC1A
	b _0802ED84
_0802EC1A:
	bl sub_0800D644
	ldr r4, _0802EC3C  @ =gUnknown_02016D60
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	mov r1, #16
	mov r2, #0
	bl sub_08063D28
	mov r0, #16
	strh r0, [r4, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EC38:
	.4byte gUnknown_02000010
_0802EC3C:
	.4byte gUnknown_02016D60
_0802EC40:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EC4E
	b _0802ED84
_0802EC4E:
	b _0802ED00
_0802EC50:
	mov r0, #60
	strh r0, [r5, #4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, _0802EC94  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
	ldr r0, _0802EC98  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #2
	strb r1, [r0]
	ldr r0, _0802EC9C  @ =0x00000502
	bl sub_0800D67C
	ldr r3, _0802ECA0  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EC94:
	.4byte gUnknown_0202A7E0
_0802EC98:
	.4byte gUnknown_03006A30
_0802EC9C:
	.4byte 0x00000502
_0802ECA0:
	.4byte gUnknown_02000010
_0802ECA4:
	ldr r0, _0802ECC4  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802ED84
	bl sub_0800D644
	ldr r0, _0802ECC8  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r1, #16
	strh r1, [r0, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802ECC4:
	.4byte gUnknown_02000010
_0802ECC8:
	.4byte gUnknown_02016D60
_0802ECCC:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802ED84
	ldr r0, _0802ED08  @ =0x00000503
	bl sub_0800D67C
	ldr r3, _0802ED0C  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802ED10  @ =0x80040008
	bl play_sound
_0802ED00:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0802ED84
_0802ED08:
	.4byte 0x00000503
_0802ED0C:
	.4byte gUnknown_02000010
_0802ED10:
	.4byte 0x80040008
_0802ED14:
	ldr r0, _0802ED50  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802ED84
	bl sub_0800D644
	ldr r1, _0802ED54  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	mov r4, #0
	strb r0, [r1]
	mov r0, #0
	mov r1, #16
	mov r2, #0
	bl sub_08063D28
	ldr r1, _0802ED58  @ =gUnknown_03006A30
	mov r0, #8
	strb r0, [r1, #12]
	ldr r0, [r1, #40]
	add r0, r0, #42
	strb r4, [r0]
	ldr r0, _0802ED5C  @ =gUnknown_0202A7E0
	ldr r1, _0802ED60  @ =gUnknown_08427870
	bl sub_0804CE64
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802ED50:
	.4byte gUnknown_02000010
_0802ED54:
	.4byte gUnknown_02016D60
_0802ED58:
	.4byte gUnknown_03006A30
_0802ED5C:
	.4byte gUnknown_0202A7E0
_0802ED60:
	.4byte gUnknown_08427870
_0802ED64:
	ldr r0, _0802ED8C  @ =gUnknown_0202A7E0
	bl sub_0804CE7C
	cmp r0, #0
	beq _0802ED84
	ldr r0, _0802ED90  @ =gUnknown_02016D60
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0802ED94  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802ED98  @ =gUnknown_03000520
	strb r2, [r1, #7]
	ldr r0, _0802ED9C  @ =0x0020FFF0
	str r0, [r1, #12]
_0802ED84:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ED8C:
	.4byte gUnknown_0202A7E0
_0802ED90:
	.4byte gUnknown_02016D60
_0802ED94:
	.4byte gSubState
_0802ED98:
	.4byte gUnknown_03000520
_0802ED9C:
	.4byte 0x0020FFF0
	THUMB_FUNC_END sub_0802EA98

	THUMB_FUNC_START sub_0802EDA0
sub_0802EDA0: @ 0x0802EDA0
	push {r4-r6,lr}
	ldr r0, _0802EDB8  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #11
	bls _0802EDAE
	b _0802F074
_0802EDAE:
	lsl r0, r1, #2
	ldr r1, _0802EDBC  @ =0x0802EDC0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802EDB8:
	.4byte gUnknown_02016D60
_0802EDBC:
	.4byte 0x0802EDC0
	.4byte _0802EDF0
	.4byte _0802EE20
	.4byte _0802EE90
	.4byte _0802EF2C
	.4byte _0802EF42
	.4byte _0802EF80
	.4byte _0802EF80
	.4byte _0802EF80
	.4byte _0802EF92
	.4byte _0802EFF8
	.4byte _0802F028
	.4byte _0802F02E
_0802EDF0:
	ldr r0, _0802EE18  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _0802EDFE
	b _0802F074
_0802EDFE:
	ldrb r0, [r3, #12]
	cmp r0, #6
	bhi _0802EE06
	b _0802EFB2
_0802EE06:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #120
	strh r0, [r3, #4]
	ldr r0, _0802EE1C  @ =0x00000203
	bl play_sound
	b _0802F074
_0802EE18:
	.4byte gUnknown_03000948
_0802EE1C:
	.4byte 0x00000203
_0802EE20:
	ldr r0, _0802EE80  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802EE4E
	bl 0x0800099C
	ldr r1, _0802EE84  @ =gUnknown_0202A7E0
	ldr r1, [r1, #12]
	mov r4, #3
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
	bl 0x0800099C
	ldr r1, _0802EE88  @ =gUnknown_03006A30
	ldr r1, [r1, #40]
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
_0802EE4E:
	ldr r1, _0802EE8C  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EE5E
	b _0802F074
_0802EE5E:
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #215
	lsl r0, r0, #1
	bl play_sound
	mov r0, #98
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #152
	strh r1, [r0, #50]
	mov r1, #4
	strh r1, [r0, #54]
	b _0802F074
_0802EE80:
	.4byte gUnknown_03000948
_0802EE84:
	.4byte gUnknown_0202A7E0
_0802EE88:
	.4byte gUnknown_03006A30
_0802EE8C:
	.4byte gUnknown_02016D60
_0802EE90:
	ldr r4, _0802EED8  @ =gUnknown_0202A7E0
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _0802EEC4
	ldr r0, _0802EEDC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802EEC4
	bl 0x0800099C
	ldr r1, [r4, #12]
	mov r4, #3
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
	bl 0x0800099C
	ldr r1, _0802EEE0  @ =gUnknown_03006A30
	ldr r1, [r1, #40]
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
_0802EEC4:
	ldr r6, _0802EEE4  @ =gUnknown_02016D60
	ldrb r0, [r6, #13]
	cmp r0, #1
	bne _0802EEE8
	mov r0, #0
	bl sub_0804CD94
	mov r0, #0
	strb r0, [r6, #13]
	b _0802F074
_0802EED8:
	.4byte gUnknown_0202A7E0
_0802EEDC:
	.4byte gUnknown_03000948
_0802EEE0:
	.4byte gUnknown_03006A30
_0802EEE4:
	.4byte gUnknown_02016D60
_0802EEE8:
	cmp r0, #2
	beq _0802EEEE
	b _0802F074
_0802EEEE:
	mov r0, #90
	mov r1, #1
	mov r2, #20
	bl sub_0804C8A8
	ldr r4, _0802EF28  @ =gUnknown_03006A30
	ldr r1, [r4, #40]
	ldrh r1, [r1, #50]
	sub r1, r1, #16
	mov r5, #0
	strh r1, [r0, #50]
	ldr r1, [r4, #40]
	ldrh r1, [r1, #54]
	sub r1, r1, #32
	strh r1, [r0, #54]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #60
	strh r0, [r6, #4]
	mov r0, #0
	mov r1, #16
	mov r2, #16
	bl sub_08063D28
	ldr r0, [r4, #40]
	add r0, r0, #42
	strb r5, [r0]
	b _0802F074
_0802EF28:
	.4byte gUnknown_03006A30
_0802EF2C:
	ldrh r0, [r3, #4]
	sub r0, r0, #1
	strh r0, [r3, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EF3A
	b _0802F074
_0802EF3A:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	b _0802F074
_0802EF42:
	ldr r2, _0802EF58  @ =gUnknown_03000450
	ldrh r1, [r2, #34]
	mov r4, #34
	ldrsh r0, [r2, r4]
	cmp r0, #0
	ble _0802EF5C
	add r0, r1, #0
	sub r0, r0, #8
	strh r0, [r2, #34]
	b _0802F04A
	.byte 0x00
	.byte 0x00
_0802EF58:
	.4byte gUnknown_03000450
_0802EF5C:
	ldr r1, _0802EF78  @ =gUnknown_030004A0
	mov r0, #0
	strh r0, [r2, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #40
	strh r0, [r3, #4]
	ldr r0, _0802EF7C  @ =0x000001AF
	bl play_sound
	b _0802F074
_0802EF78:
	.4byte gUnknown_030004A0
_0802EF7C:
	.4byte 0x000001AF
_0802EF80:
	ldrh r0, [r3, #4]
	sub r0, r0, #1
	strh r0, [r3, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F074
	bl sub_0802F080
	b _0802F074
_0802EF92:
	ldr r1, _0802EFB8  @ =gUnknown_03000520
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802F074
	strb r0, [r1, #7]
	ldr r0, _0802EFBC  @ =0x0020FFF0
	str r0, [r1, #12]
	ldr r0, _0802EFC0  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0802F074
	ldrb r0, [r3, #12]
	cmp r0, #6
	bhi _0802EFC4
_0802EFB2:
	add r0, r0, #1
	strb r0, [r3, #12]
	b _0802F074
_0802EFB8:
	.4byte gUnknown_03000520
_0802EFBC:
	.4byte 0x0020FFF0
_0802EFC0:
	.4byte gUnknown_03000948
_0802EFC4:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r0, _0802EFF0  @ =0x00000504
	bl sub_0800D67C
	ldr r3, _0802EFF4  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802EFF0:
	.4byte 0x00000504
_0802EFF4:
	.4byte gUnknown_02000010
_0802EFF8:
	ldr r0, _0802F020  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F074
	bl sub_0800D644
	ldr r1, _0802F024  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #14]
	mov r0, #253
	lsl r0, r0, #1
	bl play_sound
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802F020:
	.4byte gUnknown_02000010
_0802F024:
	.4byte gUnknown_02016D60
_0802F028:
	bl sub_0802FA94
	b _0802F074
_0802F02E:
	ldr r0, _0802F054  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802F074
	ldr r1, _0802F058  @ =gUnknown_03000450
	ldrh r2, [r1, #34]
	mov r4, #34
	ldrsh r0, [r1, r4]
	cmp r0, #119
	bgt _0802F060
	add r0, r2, #1
	strh r0, [r1, #34]
_0802F04A:
	ldr r1, _0802F05C  @ =gUnknown_030004A0
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802F054:
	.4byte gUnknown_03000948
_0802F058:
	.4byte gUnknown_03000450
_0802F05C:
	.4byte gUnknown_030004A0
_0802F060:
	mov r0, #120
	strh r0, [r1, #34]
	ldr r1, _0802F07C  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #4
	strb r0, [r3]
	mov r0, #40
	strh r0, [r3, #4]
_0802F074:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F07C:
	.4byte gSubState
	THUMB_FUNC_END sub_0802EDA0

	THUMB_FUNC_START sub_0802F080
sub_0802F080: @ 0x0802F080
	push {lr}
	ldr r1, _0802F0AC  @ =gUnknown_02016D60
	mov r2, #0
	mov r0, #20
	strh r0, [r1, #4]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r2, [r1, #12]
	ldr r1, _0802F0B0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _0802F0B4  @ =0x000001F9
	bl play_sound
	pop {r0}
	bx r0
_0802F0AC:
	.4byte gUnknown_02016D60
_0802F0B0:
	.4byte gUnknown_03000520
_0802F0B4:
	.4byte 0x000001F9
	THUMB_FUNC_END sub_0802F080

	THUMB_FUNC_START sub_0802F0B8
sub_0802F0B8: @ 0x0802F0B8
	push {r4,lr}
	ldr r1, _0802F0D0  @ =gUnknown_02016D60
	ldrb r0, [r1]
	sub r0, r0, #4
	add r4, r1, #0
	cmp r0, #4
	bhi _0802F1B0
	lsl r0, r0, #2
	ldr r1, _0802F0D4  @ =0x0802F0D8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F0D0:
	.4byte gUnknown_02016D60
_0802F0D4:
	.4byte 0x0802F0D8
	.4byte _0802F0EC
	.4byte _0802F100
	.4byte _0802F12C
	.4byte _0802F16C
	.4byte _0802F19C
_0802F0EC:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F1B0
	ldr r0, _0802F0FC  @ =0x00000505
	b _0802F13A
_0802F0FC:
	.4byte 0x00000505
_0802F100:
	ldr r0, _0802F124  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F1B0
	bl sub_0800D644
	ldr r1, _0802F128  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #60
	strh r0, [r1, #4]
	mov r0, #2
	strb r0, [r1, #14]
	b _0802F1B0
	.byte 0x00
	.byte 0x00
_0802F124:
	.4byte gUnknown_02000010
_0802F128:
	.4byte gUnknown_02016D60
_0802F12C:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F1B0
	ldr r0, _0802F164  @ =0x00000506
_0802F13A:
	bl sub_0800D67C
	ldr r3, _0802F168  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802F1B0
	.byte 0x00
	.byte 0x00
_0802F164:
	.4byte 0x00000506
_0802F168:
	.4byte gUnknown_02000010
_0802F16C:
	ldr r0, _0802F190  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F1B0
	bl sub_0800D644
	ldr r1, _0802F194  @ =gUnknown_02016D60
	mov r0, #3
	strb r0, [r1, #14]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _0802F198  @ =0x00000203
	bl play_sound
	b _0802F1B0
_0802F190:
	.4byte gUnknown_02000010
_0802F194:
	.4byte gUnknown_02016D60
_0802F198:
	.4byte 0x00000203
_0802F19C:
	ldrb r2, [r4, #14]
	cmp r2, #0
	bne _0802F1B0
	ldr r0, _0802F1B8  @ =gSubState
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	strb r2, [r4]
	mov r0, #30
	strh r0, [r4, #4]
_0802F1B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F1B8:
	.4byte gSubState
	THUMB_FUNC_END sub_0802F0B8

	THUMB_FUNC_START sub_0802F1BC
sub_0802F1BC: @ 0x0802F1BC
	push {r4,lr}
	ldr r0, _0802F1D4  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #6
	bls _0802F1CA
	b _0802F2F8
_0802F1CA:
	lsl r0, r1, #2
	ldr r1, _0802F1D8  @ =0x0802F1DC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F1D4:
	.4byte gUnknown_02016D60
_0802F1D8:
	.4byte 0x0802F1DC
	.4byte _0802F1F8
	.4byte _0802F212
	.4byte _0802F228
	.4byte _0802F278
	.4byte _0802F288
	.4byte _0802F29A
	.4byte _0802F2E0
_0802F1F8:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F206
	b _0802F2F8
_0802F206:
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	mov r0, #4
	strb r0, [r2, #14]
	b _0802F2F8
_0802F212:
	ldr r1, _0802F220  @ =gUnknown_03000450
	ldr r0, _0802F224  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	str r0, [r1]
	mov r0, #120
	strh r0, [r2, #4]
	b _0802F2F8
_0802F220:
	.4byte gUnknown_03000450
_0802F224:
	.4byte gUnknown_03006A30
_0802F228:
	bl sub_0802FA94
	ldr r1, _0802F270  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	strb r0, [r1, #14]
	mov r0, #90
	mov r1, #1
	mov r2, #20
	bl sub_0804C8A8
	ldr r4, _0802F274  @ =gUnknown_03006A30
	ldr r1, [r4, #40]
	ldrh r1, [r1, #50]
	sub r1, r1, #16
	strh r1, [r0, #50]
	ldr r1, [r4, #40]
	ldrh r1, [r1, #54]
	sub r1, r1, #24
	strh r1, [r0, #54]
	mov r0, #0
	mov r1, #8
	mov r2, #8
	bl sub_08063D28
	mov r0, #8
	strb r0, [r4, #12]
	b _0802F2F8
_0802F270:
	.4byte gUnknown_02016D60
_0802F274:
	.4byte gUnknown_03006A30
_0802F278:
	bl sub_0802FA94
	ldr r1, _0802F284  @ =gUnknown_02016D60
	mov r0, #180
	strh r0, [r1, #4]
	b _0802F2F8
_0802F284:
	.4byte gUnknown_02016D60
_0802F288:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldrb r0, [r2]
	add r0, r0, #1
	b _0802F2F6
_0802F29A:
	ldr r0, _0802F2BC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802F2F8
	ldrb r3, [r2, #12]
	cmp r3, #15
	bhi _0802F2C4
	ldr r0, _0802F2C0  @ =gUnknown_03000520
	mov r1, #1
	neg r1, r1
	str r1, [r0, #12]
	add r0, r3, #1
	strb r0, [r2, #12]
	b _0802F2F8
	.byte 0x00
	.byte 0x00
_0802F2BC:
	.4byte gUnknown_03000948
_0802F2C0:
	.4byte gUnknown_03000520
_0802F2C4:
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	mov r0, #90
	strh r0, [r2, #4]
	bl sub_0800D644
	ldr r0, _0802F2DC  @ =0x80040000
	bl play_sound
	b _0802F2F8
	.byte 0x00
	.byte 0x00
_0802F2DC:
	.4byte 0x80040000
_0802F2E0:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldr r0, _0802F300  @ =gSubState
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
_0802F2F6:
	strb r0, [r2]
_0802F2F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F300:
	.4byte gSubState
	THUMB_FUNC_END sub_0802F1BC

	THUMB_FUNC_START sub_0802F304
sub_0802F304: @ 0x0802F304
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #16
	lsr r6, r1, #16
	ldr r4, _0802F354  @ =gUnknown_02000010
	ldrb r1, [r4]
	mov r5, #127
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #6
	bne _0802F320
	bl sub_0800D644
_0802F320:
	ldrb r1, [r4]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0802F35C
	ldr r1, _0802F358  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r1, #15]
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F35C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #30
	strh r0, [r1, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0802FA3C
	mov r0, #1
	b _0802F35E
	.byte 0x00
	.byte 0x00
_0802F354:
	.4byte gUnknown_02000010
_0802F358:
	.4byte gUnknown_02016D60
_0802F35C:
	mov r0, #0
_0802F35E:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F304

	THUMB_FUNC_START sub_0802F364
sub_0802F364: @ 0x0802F364
	push {r4,lr}
	ldr r0, _0802F37C  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #13
	bls _0802F372
	b _0802F676
_0802F372:
	lsl r0, r1, #2
	ldr r1, _0802F380  @ =0x0802F384
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F37C:
	.4byte gUnknown_02016D60
_0802F380:
	.4byte 0x0802F384
	.4byte _0802F3BC
	.4byte _0802F3DC
	.4byte _0802F43C
	.4byte _0802F474
	.4byte _0802F4E0
	.4byte _0802F524
	.4byte _0802F542
	.4byte _0802F566
	.4byte _0802F594
	.4byte _0802F5CC
	.4byte _0802F5DC
	.4byte _0802F5EC
	.4byte _0802F5FC
	.4byte _0802F654
_0802F3BC:
	ldr r2, _0802F3D0  @ =gUnknown_030004A0
	ldr r1, _0802F3D4  @ =gUnknown_03000450
	mov r0, #0
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	ldr r0, _0802F3D8  @ =0x800B01AD
	bl play_sound
	b _0802F4BC
_0802F3D0:
	.4byte gUnknown_030004A0
_0802F3D4:
	.4byte gUnknown_03000450
_0802F3D8:
	.4byte 0x800B01AD
_0802F3DC:
	ldr r0, _0802F430  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _0802F3EA
	b _0802F676
_0802F3EA:
	ldrb r0, [r4, #12]
	sub r0, r0, #1
	strb r0, [r4, #12]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802F3F8
	b _0802F676
_0802F3F8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #120
	strh r0, [r4, #4]
	mov r0, #90
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	ldr r4, _0802F434  @ =gUnknown_0202A7E0
	str r0, [r4, #12]
	mov r0, #90
	mov r1, #0
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r4, #32]
	mov r0, #90
	mov r1, #0
	mov r2, #2
	bl sub_0804C8A8
	str r0, [r4, #52]
	ldr r0, _0802F438  @ =0x00000201
	bl play_sound
	b _0802F676
_0802F430:
	.4byte gUnknown_03000948
_0802F434:
	.4byte gUnknown_0202A7E0
_0802F438:
	.4byte 0x00000201
_0802F43C:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F44A
	b _0802F676
_0802F44A:
	mov r0, #161
	lsl r0, r0, #3
	bl sub_0800D67C
	ldr r3, _0802F470  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802F63C
_0802F470:
	.4byte gUnknown_02000010
_0802F474:
	ldr r0, _0802F4C8  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802F482
	b _0802F676
_0802F482:
	ldr r2, _0802F4CC  @ =gUnknown_030004A0
	ldr r1, _0802F4D0  @ =gUnknown_03000450
	ldrh r0, [r1, #34]
	add r0, r0, #1
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #119
	bgt _0802F49A
	b _0802F676
_0802F49A:
	ldr r0, _0802F4D4  @ =0x00000509
	bl sub_0800D67C
	ldr r3, _0802F4D8  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
_0802F4BC:
	ldr r1, _0802F4DC  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F4C8:
	.4byte gUnknown_03000948
_0802F4CC:
	.4byte gUnknown_030004A0
_0802F4D0:
	.4byte gUnknown_03000450
_0802F4D4:
	.4byte 0x00000509
_0802F4D8:
	.4byte gUnknown_02000010
_0802F4DC:
	.4byte gUnknown_02016D60
_0802F4E0:
	ldr r0, _0802F518  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802F4EE
	b _0802F676
_0802F4EE:
	ldr r2, _0802F51C  @ =gUnknown_030004A0
	ldr r1, _0802F520  @ =gUnknown_03000450
	ldrh r0, [r1, #34]
	add r0, r0, #1
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #191
	bgt _0802F506
	b _0802F676
_0802F506:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	mov r0, #1
	mov r1, #0
	b _0802F55E
	.byte 0x00
	.byte 0x00
_0802F518:
	.4byte gUnknown_03000948
_0802F51C:
	.4byte gUnknown_030004A0
_0802F520:
	.4byte gUnknown_03000450
_0802F524:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F532
	b _0802F676
_0802F532:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	mov r0, #0
	mov r1, #1
	b _0802F55E
_0802F542:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F550
	b _0802F676
_0802F550:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #180
	strh r0, [r4, #4]
	mov r0, #2
	mov r1, #2
_0802F55E:
	mov r2, #120
	bl sub_0802F9F8
	b _0802F676
_0802F566:
	ldrh r0, [r4, #4]
	cmp r0, #60
	bne _0802F570
	bl sub_0800D644
_0802F570:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F57E
	b _0802F676
_0802F57E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	ldr r1, _0802F590  @ =gUnknown_03006A30
	mov r0, #10
	strb r0, [r1, #12]
	b _0802F676
_0802F590:
	.4byte gUnknown_03006A30
_0802F594:
	ldrh r0, [r4, #4]
	cmp r0, #30
	bne _0802F5A4
	ldr r0, _0802F5C4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #0
	strb r1, [r0]
_0802F5A4:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F676
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	ldr r1, _0802F5C8  @ =0x0000050A
	mov r0, #0
	bl sub_0802FA3C
	b _0802F676
_0802F5C4:
	.4byte gUnknown_03006A30
_0802F5C8:
	.4byte 0x0000050A
_0802F5CC:
	ldr r1, _0802F5D8  @ =0x0000050B
	mov r0, #1
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5D8:
	.4byte 0x0000050B
_0802F5DC:
	ldr r1, _0802F5E8  @ =0x0000050C
	mov r0, #2
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5E8:
	.4byte 0x0000050C
_0802F5EC:
	ldr r1, _0802F5F8  @ =0x0000050D
	mov r0, #0
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5F8:
	.4byte 0x0000050D
_0802F5FC:
	ldr r0, _0802F644  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F676
	bl sub_0800D644
	ldr r4, _0802F648  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r4, #15]
	ldr r1, _0802F64C  @ =gUnknown_03006A30
	mov r0, #11
	strb r0, [r1, #12]
	mov r0, #0
	mov r1, #3
	mov r2, #60
	bl sub_0802F9F8
	mov r0, #1
	mov r1, #4
	mov r2, #60
	bl sub_0802F9F8
	mov r0, #2
	mov r1, #5
	mov r2, #60
	bl sub_0802F9F8
	ldr r0, _0802F650  @ =0x00000201
	bl play_sound
_0802F63C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802F676
_0802F644:
	.4byte gUnknown_02000010
_0802F648:
	.4byte gUnknown_02016D60
_0802F64C:
	.4byte gUnknown_03006A30
_0802F650:
	.4byte 0x00000201
_0802F654:
	bl sub_0802FA94
	ldr r0, _0802F67C  @ =gUnknown_0202A4F8
	ldr r0, [r0]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802F676
	ldr r1, _0802F680  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802F684  @ =gUnknown_02016D60
	mov r0, #0
	strb r0, [r1]
	mov r0, #120
	strh r0, [r1, #4]
_0802F676:
	pop {r4}
	pop {r0}
	bx r0
_0802F67C:
	.4byte gUnknown_0202A4F8
_0802F680:
	.4byte gSubState
_0802F684:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802F364

	THUMB_FUNC_START sub_0802F688
sub_0802F688: @ 0x0802F688
	push {r4,r5,lr}
	ldr r0, _0802F6C4  @ =gUnknown_0202A4F8
	ldr r1, [r0]
	mov r2, #8
	orr r1, r1, r2
	str r1, [r0]
	mov r4, #0
	ldr r5, _0802F6C8  @ =gUnknown_03006A58
_0802F698:
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	ldr r0, [r0]
	lsl r1, r4, #2
	ldr r2, _0802F6CC  @ =gUnknown_0842788C
	add r1, r1, r2
	mov r2, #120
	bl sub_0803D7E8
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _0802F698
	ldr r0, _0802F6D0  @ =0x00000205
	bl play_sound
	pop {r4,r5}
	pop {r0}
	bx r0
_0802F6C4:
	.4byte gUnknown_0202A4F8
_0802F6C8:
	.4byte gUnknown_03006A58
_0802F6CC:
	.4byte gUnknown_0842788C
_0802F6D0:
	.4byte 0x00000205
	THUMB_FUNC_END sub_0802F688

	THUMB_FUNC_START sub_0802F6D4
sub_0802F6D4: @ 0x0802F6D4
	push {r4,r5,lr}
	ldr r0, _0802F6EC  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #14
	bls _0802F6E2
	b _0802F9D6
_0802F6E2:
	lsl r0, r1, #2
	ldr r1, _0802F6F0  @ =0x0802F6F4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F6EC:
	.4byte gUnknown_02016D60
_0802F6F0:
	.4byte 0x0802F6F4
	.4byte _0802F730
	.4byte _0802F774
	.4byte _0802F798
	.4byte _0802F7C4
	.4byte _0802F7E2
	.4byte _0802F810
	.4byte _0802F848
	.4byte _0802F884
	.4byte _0802F8AC
	.4byte _0802F8B4
	.4byte _0802F8C0
	.4byte _0802F8D0
	.4byte _0802F8E0
	.4byte _0802F924
	.4byte _0802F974
_0802F730:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F73E
	b _0802F9D6
_0802F73E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	bl sub_08063C5C
	mov r0, #2
	bl sub_08063C5C
	mov r0, #3
	bl sub_08063C5C
	ldr r2, _0802F770  @ =gUnknown_03006A30
	add r0, r2, #0
	add r0, r0, #156
	mov r1, #11
	strb r1, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #144
	add r0, r2, r3
	strb r1, [r0]
	b _0802F9D6
_0802F770:
	.4byte gUnknown_03006A30
_0802F774:
	ldr r1, _0802F790  @ =gUnknown_03000520
	ldr r0, _0802F794  @ =0xF877FFFF
	str r0, [r1, #12]
	mov r0, #28
	strb r0, [r1, #7]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #255
	lsl r0, r0, #1
	bl play_sound
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F790:
	.4byte gUnknown_03000520
_0802F794:
	.4byte 0xF877FFFF
_0802F798:
	ldrb r2, [r4, #12]
	cmp r2, #15
	bhi _0802F7B8
	ldr r0, _0802F7B4  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0802F7AC
	b _0802F9D6
_0802F7AC:
	add r0, r2, #1
	strb r0, [r4, #12]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F7B4:
	.4byte gUnknown_03000948
_0802F7B8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	b _0802F9D6
_0802F7C4:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F7D2
	b _0802F9D6
_0802F7D2:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #240
	strh r0, [r4, #4]
	bl sub_0802F688
	b _0802F9D6
_0802F7E2:
	ldrh r0, [r4, #4]
	cmp r0, #120
	bne _0802F7F0
	mov r0, #130
	lsl r0, r0, #2
	bl play_sound
_0802F7F0:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F7FE
	b _0802F9D6
_0802F7FE:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, _0802F80C  @ =0x000001FF
	bl play_sound
	b _0802F9D6
_0802F80C:
	.4byte 0x000001FF
_0802F810:
	ldrb r2, [r4, #12]
	cmp r2, #0
	beq _0802F830
	ldr r0, _0802F82C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0802F824
	b _0802F9D6
_0802F824:
	sub r0, r2, #1
	strb r0, [r4, #12]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F82C:
	.4byte gUnknown_03000948
_0802F830:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #120
	strh r0, [r4, #4]
	ldr r0, _0802F844  @ =0x000001FD
	bl play_sound
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F844:
	.4byte 0x000001FD
_0802F848:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F856
	b _0802F9D6
_0802F856:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	ldr r2, _0802F87C  @ =gUnknown_0202A4F8
	ldr r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #2
	bl play_sound
	ldr r0, _0802F880  @ =0x800B01B0
	bl play_sound
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F87C:
	.4byte gUnknown_0202A4F8
_0802F880:
	.4byte 0x800B01B0
_0802F884:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F892
	b _0802F9D6
_0802F892:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	ldr r1, _0802F8A8  @ =0x0000050E
	mov r0, #0
	bl sub_0802FA3C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8A8:
	.4byte 0x0000050E
_0802F8AC:
	ldr r1, _0802F8B0  @ =0x0000050F
	b _0802F8D2
_0802F8B0:
	.4byte 0x0000050F
_0802F8B4:
	mov r1, #162
	lsl r1, r1, #3
	mov r0, #2
	bl sub_0802F304
	b _0802F9D6
_0802F8C0:
	ldr r1, _0802F8CC  @ =0x00000511
	mov r0, #0
	bl sub_0802F304
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8CC:
	.4byte 0x00000511
_0802F8D0:
	ldr r1, _0802F8DC  @ =0x00000512
_0802F8D2:
	mov r0, #1
	bl sub_0802F304
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8DC:
	.4byte 0x00000512
_0802F8E0:
	ldr r0, _0802F914  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F9D6
	bl sub_0800D644
	ldr r1, _0802F918  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r1, #15]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #120
	strh r0, [r1, #4]
	ldr r2, _0802F91C  @ =gUnknown_0202A4F8
	ldr r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	str r0, [r2]
	ldr r0, _0802F920  @ =0x80040000
	bl play_sound
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F914:
	.4byte gUnknown_02000010
_0802F918:
	.4byte gUnknown_02016D60
_0802F91C:
	.4byte gUnknown_0202A4F8
_0802F920:
	.4byte 0x80040000
_0802F924:
	ldr r0, _0802F948  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802F9D6
	ldr r1, _0802F94C  @ =gUnknown_03000450
	ldrh r2, [r1, #34]
	mov r3, #34
	ldrsh r0, [r1, r3]
	cmp r0, #91
	ble _0802F954
	sub r0, r2, #1
	strh r0, [r1, #34]
	ldr r1, _0802F950  @ =gUnknown_030004A0
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	b _0802F9D6
_0802F948:
	.4byte gUnknown_03000948
_0802F94C:
	.4byte gUnknown_03000450
_0802F950:
	.4byte gUnknown_030004A0
_0802F954:
	ldr r0, _0802F96C  @ =0x000001B1
	bl play_sound
	ldr r1, _0802F970  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #210
	lsl r0, r0, #1
	strh r0, [r1, #4]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F96C:
	.4byte 0x000001B1
_0802F970:
	.4byte gUnknown_02016D60
_0802F974:
	ldrh r0, [r4, #4]
	cmp r0, #60
	bne _0802F99E
	ldr r0, _0802F9DC  @ =0x00000201
	bl play_sound
	mov r0, #0
	mov r1, #6
	mov r2, #40
	bl sub_0802F9F8
	mov r0, #1
	mov r1, #7
	mov r2, #40
	bl sub_0802F9F8
	mov r0, #2
	mov r1, #8
	mov r2, #40
	bl sub_0802F9F8
_0802F99E:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	mov r5, #0
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F9D6
	ldr r1, _0802F9E0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802F9E4  @ =0x00006739
	mov r0, #0
	bl set_palette_color
	strb r5, [r4, #9]
	mov r0, #255
	strb r0, [r4, #10]
	ldr r1, _0802F9E8  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	ldr r0, _0802F9EC  @ =gSubState
	strb r5, [r0]
	ldr r2, _0802F9F0  @ =gNewKeys
	ldrh r1, [r2]
	ldr r0, _0802F9F4  @ =0x0000FFF7
	and r0, r0, r1
	strh r0, [r2]
_0802F9D6:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802F9DC:
	.4byte 0x00000201
_0802F9E0:
	.4byte gUnknown_03000520
_0802F9E4:
	.4byte 0x00006739
_0802F9E8:
	.4byte gUnknown_03005050
_0802F9EC:
	.4byte gSubState
_0802F9F0:
	.4byte gNewKeys
_0802F9F4:
	.4byte 0x0000FFF7
	THUMB_FUNC_END sub_0802F6D4

	THUMB_FUNC_START sub_0802F9F8
sub_0802F9F8: @ 0x0802F9F8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0802FA30  @ =gUnknown_0202A7E0
	lsl r4, r0, #2
	add r4, r4, r0
	lsl r4, r4, #2
	add r3, r3, #12
	add r4, r4, r3
	ldr r0, [r4]
	lsr r1, r1, #22
	ldr r3, _0802FA34  @ =gUnknown_0842789C
	add r1, r1, r3
	bl sub_0803D7E8
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #20]
	ldr r0, _0802FA38  @ =0x00000201
	bl play_sound
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FA30:
	.4byte gUnknown_0202A7E0
_0802FA34:
	.4byte gUnknown_0842789C
_0802FA38:
	.4byte 0x00000201
	THUMB_FUNC_END sub_0802F9F8

	THUMB_FUNC_START sub_0802FA3C
sub_0802FA3C: @ 0x0802FA3C
	push {r4,lr}
	add r4, r0, #0
	add r0, r1, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_0800D67C
	ldr r3, _0802FA88  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802FA8C  @ =gUnknown_02016D60
	strb r4, [r0, #15]
	ldr r1, _0802FA90  @ =gUnknown_0202A7E0
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, #12
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #20]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FA88:
	.4byte gUnknown_02000010
_0802FA8C:
	.4byte gUnknown_02016D60
_0802FA90:
	.4byte gUnknown_0202A7E0
	THUMB_FUNC_END sub_0802FA3C

	THUMB_FUNC_START sub_0802FA94
sub_0802FA94: @ 0x0802FA94
	push {r4,lr}
	ldr r0, _0802FAD0  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _0802FAE0
	ldrh r0, [r1, #54]
	sub r0, r0, #80
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r0, #0
	bge _0802FAAE
	mov r1, #0
_0802FAAE:
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #192
	ble _0802FAB8
	mov r1, #192
_0802FAB8:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r2, [r4, r0]
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r2, r0
	beq _0802FAD8
	add r1, r4, #0
	cmp r2, r0
	bge _0802FAD4
	add r0, r3, #1
	b _0802FAD6
_0802FAD0:
	.4byte gUnknown_03000450
_0802FAD4:
	sub r0, r3, #1
_0802FAD6:
	strh r0, [r1, #34]
_0802FAD8:
	ldr r1, _0802FAE8  @ =gUnknown_030004A0
	ldrh r0, [r4, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
_0802FAE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FAE8:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_0802FA94

	THUMB_FUNC_START sub_0802FAEC
sub_0802FAEC: @ 0x0802FAEC
	push {lr}
	ldr r2, _0802FB18  @ =gUnknown_02016D60
	ldr r0, _0802FB1C  @ =gUnknown_03000BF0
	ldr r0, [r0]
	mov r1, #15
	and r0, r0, r1
	strb r0, [r2, #8]
	ldr r1, _0802FB20  @ =gUnknown_084278C0
	ldr r0, _0802FB24  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FB18:
	.4byte gUnknown_02016D60
_0802FB1C:
	.4byte gUnknown_03000BF0
_0802FB20:
	.4byte gUnknown_084278C0
_0802FB24:
	.4byte gSubState
	THUMB_FUNC_END sub_0802FAEC

	THUMB_FUNC_START sub_0802FB28
sub_0802FB28: @ 0x0802FB28
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	ldr r0, _0802FC20  @ =gUnknown_03000520
	ldrb r7, [r0]
	cmp r7, #0
	bne _0802FC12
	mov r0, #128
	lsl r0, r0, #19
	mov r1, #0
	mov r8, r1
	strh r7, [r0]
	ldr r5, _0802FC24  @ =gUnknown_030004A0
	mov r0, #64
	strh r0, [r5]
	mov r4, #160
	str r4, [sp]
	mov r1, #224
	lsl r1, r1, #19
	ldr r2, _0802FC28  @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r6, _0802FC2C  @ =gOAMBuffer
	ldr r1, _0802FC30  @ =0x01000200
	mov r9, r1
	add r1, r6, #0
	mov r2, r9
	bl CpuFastSet
	str r7, [sp, #8]
	add r0, sp, #8
	ldr r4, _0802FC34  @ =gUnknown_03006630
	ldr r2, _0802FC38  @ =0x01000040
	add r1, r4, #0
	bl CpuFastSet
	ldr r0, _0802FC3C  @ =gUnknown_0300050C
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0802FC40  @ =gUnknown_03000204
	strb r1, [r0]
	ldr r0, _0802FC44  @ =gUnknown_03000E34
	str r4, [r0]
	ldr r0, _0802FC48  @ =gUnknown_03005E08
	add r4, r4, #128
	str r4, [r0]
	ldr r0, _0802FC4C  @ =gUnknown_03005E04
	str r6, [r0]
	bl sub_0800D6F4
	bl sub_0801239C
	bl sub_080123BC
	str r7, [sp, #12]
	add r0, sp, #12
	ldr r1, _0802FC50  @ =0x0600C000
	ldr r2, _0802FC54  @ =0x01000080
	bl CpuFastSet
	str r7, [sp, #16]
	add r0, sp, #16
	ldr r1, _0802FC58  @ =0x0600D800
	mov r2, r9
	bl CpuFastSet
	mov r0, #5
	bl load_palette_from_gfx_group
	mov r0, #3
	bl load_gfx_group
	bl sub_08030054
	ldr r0, _0802FC5C  @ =gUnknown_0200B310
	str r7, [r0]
	ldr r1, _0802FC60  @ =0x00006739
	mov r0, #0
	bl set_palette_color
	add r1, r5, #0
	add r1, r1, #102
	ldr r0, _0802FC64  @ =0x00003C64
	strh r0, [r1]
	ldr r0, _0802FC68  @ =0x0000FF60
	strh r0, [r5, #12]
	ldr r0, _0802FC6C  @ =0x00001B0C
	strh r0, [r5, #8]
	str r7, [r5, #16]
	strh r7, [r5, #24]
	strh r7, [r5, #22]
	ldr r0, _0802FC70  @ =0x00001309
	strh r0, [r5, #20]
	strh r7, [r5, #34]
	mov r1, #91
	strh r1, [r5, #36]
	strh r7, [r5, #46]
	strh r1, [r5, #48]
	ldr r0, _0802FC74  @ =gUnknown_03000450
	strh r7, [r0, #32]
	strh r1, [r0, #34]
	ldr r0, _0802FC78  @ =gUnknown_0813D804
	bl sub_0804C808
	ldr r2, _0802FC7C  @ =gUnknown_02016D60
	strh r7, [r2, #6]
	ldr r1, _0802FC80  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #4
	strh r0, [r2, #4]
_0802FC12:
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FC20:
	.4byte gUnknown_03000520
_0802FC24:
	.4byte gUnknown_030004A0
_0802FC28:
	.4byte 0x01000100
_0802FC2C:
	.4byte gOAMBuffer
_0802FC30:
	.4byte 0x01000200
_0802FC34:
	.4byte gUnknown_03006630
_0802FC38:
	.4byte 0x01000040
_0802FC3C:
	.4byte gUnknown_0300050C
_0802FC40:
	.4byte gUnknown_03000204
_0802FC44:
	.4byte gUnknown_03000E34
_0802FC48:
	.4byte gUnknown_03005E08
_0802FC4C:
	.4byte gUnknown_03005E04
_0802FC50:
	.4byte 0x0600C000
_0802FC54:
	.4byte 0x01000080
_0802FC58:
	.4byte 0x0600D800
_0802FC5C:
	.4byte gUnknown_0200B310
_0802FC60:
	.4byte 0x00006739
_0802FC64:
	.4byte 0x00003C64
_0802FC68:
	.4byte 0x0000FF60
_0802FC6C:
	.4byte 0x00001B0C
_0802FC70:
	.4byte 0x00001309
_0802FC74:
	.4byte gUnknown_03000450
_0802FC78:
	.4byte gUnknown_0813D804
_0802FC7C:
	.4byte gUnknown_02016D60
_0802FC80:
	.4byte gSubState
	THUMB_FUNC_END sub_0802FB28

	THUMB_FUNC_START sub_0802FC84
sub_0802FC84: @ 0x0802FC84
	push {lr}
	ldr r1, _0802FCB8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802FCB4
	ldr r1, _0802FCBC  @ =gUnknown_030004A0
	mov r0, #250
	lsl r0, r0, #5
	strh r0, [r1]
	ldr r1, _0802FCC0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802FCC4  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0802FCB4:
	pop {r0}
	bx r0
_0802FCB8:
	.4byte gUnknown_02016D60
_0802FCBC:
	.4byte gUnknown_030004A0
_0802FCC0:
	.4byte gUnknown_03000520
_0802FCC4:
	.4byte gSubState
	THUMB_FUNC_END sub_0802FC84

	THUMB_FUNC_START sub_0802FCC8
sub_0802FCC8: @ 0x0802FCC8
	bx lr
	THUMB_FUNC_END sub_0802FCC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802FCCC
sub_0802FCCC: @ 0x0802FCCC
	push {r4,r5,lr}
	ldr r5, _0802FD00  @ =gUnknown_03000520
	ldrb r4, [r5]
	cmp r4, #0
	bne _0802FD74
	ldr r0, _0802FD04  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802FD14
	ldr r1, _0802FD08  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_080367FC
	ldr r0, _0802FD0C  @ =gUnknown_02016D60
	str r4, [r0, #36]
	ldr r0, _0802FD10  @ =0x001FFFF0
	str r0, [r5, #12]
	strb r4, [r5, #7]
	mov r0, #64
	bl sub_0800C1EC
	b _0802FD74
_0802FD00:
	.4byte gUnknown_03000520
_0802FD04:
	.4byte gNewKeys
_0802FD08:
	.4byte gSubState
_0802FD0C:
	.4byte gUnknown_02016D60
_0802FD10:
	.4byte 0x001FFFF0
_0802FD14:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802FD48
	mov r0, #1
	neg r0, r0
	str r0, [r5, #12]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802FD40  @ =gSubState
	mov r0, #7
	strb r0, [r1]
	ldr r0, _0802FD44  @ =0x80010000
	bl play_sound
	mov r0, #66
	bl play_sound
	b _0802FD74
	.byte 0x00
	.byte 0x00
_0802FD40:
	.4byte gSubState
_0802FD44:
	.4byte 0x80010000
_0802FD48:
	ldr r0, _0802FD7C  @ =gUnknown_02016D60
	ldrh r1, [r0, #6]
	add r1, r1, #1
	strh r1, [r0, #6]
	lsl r1, r1, #16
	mov r0, #225
	lsl r0, r0, #20
	cmp r1, r0
	bne _0802FD74
	mov r0, #1
	neg r0, r0
	str r0, [r5, #12]
	mov r0, #3
	mov r1, #4
	bl sub_0800C0B0
	ldr r1, _0802FD80  @ =gSubState
	mov r0, #6
	strb r0, [r1]
	ldr r0, _0802FD84  @ =0x80040000
	bl play_sound
_0802FD74:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FD7C:
	.4byte gUnknown_02016D60
_0802FD80:
	.4byte gSubState
_0802FD84:
	.4byte 0x80040000
	THUMB_FUNC_END sub_0802FCCC

	THUMB_FUNC_START sub_0802FD88
sub_0802FD88: @ 0x0802FD88
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r5, #0
	ldr r0, _0802FDC4  @ =gUnknown_03000FC0
	mov r9, r0
	ldr r1, _0802FDC8  @ =gHeldKeys
	mov r10, r1
	mov r8, r9
	ldr r0, _0802FDCC  @ =0x0000FFFF
	mov r12, r0
	ldr r7, _0802FDD0  @ =gUnknown_03005E10
	ldr r6, _0802FDD4  @ =gUnknown_03000940
_0802FDA6:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r8
	ldrh r4, [r0, #58]
	cmp r4, r12
	beq _0802FDD8
	lsl r2, r5, #1
	add r3, r2, r7
	add r0, r2, r6
	ldrh r1, [r0]
	add r0, r4, #0
	bic r0, r0, r1
	strh r0, [r3]
	b _0802FDE0
_0802FDC4:
	.4byte gUnknown_03000FC0
_0802FDC8:
	.4byte gHeldKeys
_0802FDCC:
	.4byte 0x0000FFFF
_0802FDD0:
	.4byte gUnknown_03005E10
_0802FDD4:
	.4byte gUnknown_03000940
_0802FDD8:
	lsl r2, r5, #1
	add r1, r2, r7
	mov r0, #0
	strh r0, [r1]
_0802FDE0:
	add r0, r2, r6
	strh r4, [r0]
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #3
	bls _0802FDA6
	mov r1, r10
	ldrh r0, [r1]
	mov r1, r9
	strh r0, [r1, #18]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802FD88

	THUMB_FUNC_START sub_0802FE04
sub_0802FE04: @ 0x0802FE04
	push {r4-r6,lr}
	ldr r0, _0802FE38  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _0802FE48
	ldr r1, _0802FE3C  @ =gSubState
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	bl sub_08036834
	mov r0, #0
	bl sub_0800C1EC
	ldr r1, _0802FE40  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802FE44  @ =gUnknown_02016D60
	mov r0, #0
	strh r0, [r1, #6]
	b _0802FEDC
_0802FE38:
	.4byte gNewKeys
_0802FE3C:
	.4byte gSubState
_0802FE40:
	.4byte gUnknown_03000520
_0802FE44:
	.4byte gUnknown_02016D60
_0802FE48:
	bl sub_080367E4
	mov r1, #64
	and r1, r1, r0
	lsl r1, r1, #24
	lsr r3, r1, #24
	cmp r3, #0
	beq _0802FED0
	ldr r4, _0802FEB8  @ =gUnknown_02016D60
	ldr r0, [r4, #36]
	add r0, r0, #1
	str r0, [r4, #36]
	cmp r0, #120
	bls _0802FEDC
	ldrb r1, [r4, #8]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r4, #8]
	bl sub_0802FD88
	ldr r6, _0802FEBC  @ =gUnknown_03005E10
	ldrh r1, [r6]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802FEB2
	ldr r1, _0802FEC0  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r5, [r4]
	bl sub_080367E4
	add r1, r0, #0
	mov r0, #15
	and r0, r0, r1
	bl 0x08000A40
	ldr r1, _0802FEC4  @ =gUnknown_03006C80
	strb r0, [r1]
	bl sub_08036760
	ldr r1, _0802FEC8  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _0802FECC  @ =0x80040000
	bl play_sound
_0802FEB2:
	strh r5, [r6]
	b _0802FEDC
	.byte 0x00
	.byte 0x00
_0802FEB8:
	.4byte gUnknown_02016D60
_0802FEBC:
	.4byte gUnknown_03005E10
_0802FEC0:
	.4byte gSubState
_0802FEC4:
	.4byte gUnknown_03006C80
_0802FEC8:
	.4byte gUnknown_03000520
_0802FECC:
	.4byte 0x80040000
_0802FED0:
	ldr r0, _0802FEE4  @ =gUnknown_02016D60
	ldrb r2, [r0, #8]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r0, #8]
	str r3, [r0, #36]
_0802FEDC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FEE4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802FE04

	THUMB_FUNC_START sub_0802FEE8
sub_0802FEE8: @ 0x0802FEE8
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r0, _0802FF0C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FFD6
	ldr r1, _0802FF10  @ =gUnknown_03000FC0
	mov r0, #8
	strh r0, [r1, #18]
	ldr r5, _0802FF14  @ =gUnknown_02016D60
	ldrb r4, [r5]
	cmp r4, #1
	beq _0802FF58
	cmp r4, #1
	bgt _0802FF18
	cmp r4, #0
	beq _0802FF1E
	b _0802FFD6
_0802FF0C:
	.4byte gUnknown_03000520
_0802FF10:
	.4byte gUnknown_03000FC0
_0802FF14:
	.4byte gUnknown_02016D60
_0802FF18:
	cmp r4, #2
	beq _0802FF6C
	b _0802FFD6
_0802FF1E:
	ldr r1, _0802FF4C  @ =gUnknown_030004A0
	mov r0, #64
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #19
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	str r4, [sp]
	ldr r1, _0802FF50  @ =gUnknown_03006CA8
	ldr r2, _0802FF54  @ =0x05000008
	mov r0, sp
	bl CpuSet
	mov r0, #3
	bl sub_08036704
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0802FFD6
_0802FF4C:
	.4byte gUnknown_030004A0
_0802FF50:
	.4byte gUnknown_03006CA8
_0802FF54:
	.4byte 0x05000008
_0802FF58:
	ldr r0, [r1, #8]
	cmp r0, #1
	bne _0802FFD6
	mov r0, #2
	strb r0, [r5]
	b _0802FFD6
_0802FF64:
	mov r0, #10
	bl set_main_state
	b _0802FFD6
_0802FF6C:
	bl sub_0800BED8
	ldr r1, _0802FFE0  @ =gUnknown_03006C80
	add r0, r1, #0
	add r0, r0, #44
	ldrb r0, [r0]
	mov r3, #240
	and r3, r3, r0
	cmp r3, #240
	beq _0802FFD0
	mov r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	bcs _0802FFAC
	add r5, r1, #0
	mov r6, #240
	add r4, r0, #0
_0802FF8E:
	lsl r0, r2, #3
	add r0, r0, r5
	add r0, r0, #44
	ldrb r0, [r0]
	add r1, r6, #0
	and r1, r1, r0
	cmp r1, #240
	beq _0802FFA2
	cmp r1, r3
	bne _0802FF64
_0802FFA2:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r4
	bcc _0802FF8E
_0802FFAC:
	mov r2, #0
	ldr r1, _0802FFE0  @ =gUnknown_03006C80
	ldrb r0, [r1]
	cmp r2, r0
	bcs _0802FFD0
	add r3, r1, #0
	add r1, r0, #0
_0802FFBA:
	lsl r0, r2, #3
	add r0, r0, r3
	add r0, r0, #44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FF64
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcc _0802FFBA
_0802FFD0:
	mov r0, #5
	bl set_main_state
_0802FFD6:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FFE0:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0802FEE8

	THUMB_FUNC_START sub_0802FFE4
sub_0802FFE4: @ 0x0802FFE4
	push {lr}
	ldr r0, _0803000C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030006
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _08030010  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030014  @ =gPaletteBuf2
	strh r1, [r0]
	mov r0, #9
	bl set_main_state
_08030006:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803000C:
	.4byte gUnknown_03000520
_08030010:
	.4byte 0x00006739
_08030014:
	.4byte gPaletteBuf2
	THUMB_FUNC_END sub_0802FFE4

	THUMB_FUNC_START sub_08030018
sub_08030018: @ 0x08030018
	push {lr}
	ldr r0, _08030048  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030042
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _0803004C  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030050  @ =gPaletteBuf2
	strh r1, [r0]
	bl sub_080123BC
	bl sub_0801239C
	mov r0, #6
	bl set_main_state
_08030042:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030048:
	.4byte gUnknown_03000520
_0803004C:
	.4byte 0x00006739
_08030050:
	.4byte gPaletteBuf2
	THUMB_FUNC_END sub_08030018

	THUMB_FUNC_START sub_08030054
sub_08030054: @ 0x08030054
	push {lr}
	ldr r0, _08030064  @ =0x00000402
	ldr r1, _08030068  @ =gUnknown_084278E0
	bl sub_0800F4C4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030064:
	.4byte 0x00000402
_08030068:
	.4byte gUnknown_084278E0
	THUMB_FUNC_END sub_08030054

	THUMB_FUNC_START sub_0803006C
sub_0803006C: @ 0x0803006C
	push {lr}
	ldr r1, _08030084  @ =gUnknown_084278F8
	ldr r0, _08030088  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030084:
	.4byte gUnknown_084278F8
_08030088:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0803006C

	THUMB_FUNC_START sub_0803008C
sub_0803008C: @ 0x0803008C
	push {r4,r5,lr}
	ldr r5, _0803009C  @ =gSubState
	ldrb r4, [r5]
	cmp r4, #0
	beq _080300A0
	cmp r4, #1
	beq _080300E0
	b _080300F4
_0803009C:
	.4byte gSubState
_080300A0:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _080300D4  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080300D8  @ =gPaletteBuf2
	strh r1, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0800D6F4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r1, _080300DC  @ =gUnknown_02016D60
	mov r0, #10
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	mov r0, #4
	bl sub_08036704
	b _080300F4
_080300D4:
	.4byte 0x00006739
_080300D8:
	.4byte gPaletteBuf2
_080300DC:
	.4byte gUnknown_02016D60
_080300E0:
	bl sub_080367CC
	cmp r0, #1
	bne _080300F4
	ldr r0, _080300FC  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	strb r0, [r5]
_080300F4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080300FC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0803008C

	THUMB_FUNC_START sub_08030100
sub_08030100: @ 0x08030100
	push {r4-r6,lr}
	ldr r0, _080301D4  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _080301CE
	mov r0, #128
	lsl r0, r0, #19
	mov r6, #0
	strh r4, [r0]
	bl sub_0800BED8
	mov r0, #15
	bl load_palette_from_gfx_group
	mov r0, #20
	bl load_gfx_group
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _080301D8  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080301DC  @ =gPaletteBuf2
	strh r1, [r0]
	ldr r1, _080301E0  @ =gUnknown_030004A0
	mov r0, #234
	lsl r0, r0, #5
	strh r0, [r1]
	mov r0, #224
	lsl r0, r0, #5
	strh r0, [r1, #8]
	ldr r0, _080301E4  @ =0x00001D01
	strh r0, [r1, #20]
	ldr r0, _080301E8  @ =0x00001E02
	strh r0, [r1, #32]
	ldr r0, _080301EC  @ =0x00001F03
	strh r0, [r1, #44]
	ldr r5, _080301F0  @ =gUnknown_02016D60
	mov r0, #96
	strh r0, [r5, #38]
	neg r0, r0
	strh r0, [r1, #22]
	strh r4, [r1, #10]
	ldr r0, _080301F4  @ =0x0000FFF8
	strh r0, [r1, #46]
	strh r0, [r1, #34]
	strh r4, [r1, #12]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	strh r0, [r1, #24]
	ldr r2, _080301F8  @ =gUnknown_03000450
	strh r0, [r2, #34]
	strh r0, [r2, #32]
	add r2, r1, #0
	add r2, r2, #102
	mov r0, #253
	lsl r0, r0, #6
	strh r0, [r2]
	add r1, r1, #104
	ldr r0, _080301FC  @ =0x0000070C
	strh r0, [r1]
	mov r0, #0
	mov r1, #1
	bl sub_080599A8
	ldr r1, _08030200  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #106
	strh r0, [r5, #4]
	ldr r1, _08030204  @ =gUnknown_03000948
	mov r0, #1
	strb r0, [r1, #5]
	strb r6, [r5, #8]
	mov r0, #70
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	bl sub_080397F0
	strb r0, [r5, #10]
	lsl r0, r0, #24
	mov r1, #3
	cmp r0, #0
	beq _080301BA
	mov r1, #4
_080301BA:
	strb r1, [r5, #11]
	ldr r0, _08030208  @ =gUnknown_03006C80
	strb r6, [r0, #3]
	ldr r0, _0803020C  @ =gUnknown_03000830
	strb r6, [r0]
	bl sub_0800D1A0
	ldr r0, _08030210  @ =0x80010000
	bl play_sound
_080301CE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080301D4:
	.4byte gUnknown_03000520
_080301D8:
	.4byte 0x00006739
_080301DC:
	.4byte gPaletteBuf2
_080301E0:
	.4byte gUnknown_030004A0
_080301E4:
	.4byte 0x00001D01
_080301E8:
	.4byte 0x00001E02
_080301EC:
	.4byte 0x00001F03
_080301F0:
	.4byte gUnknown_02016D60
_080301F4:
	.4byte 0x0000FFF8
_080301F8:
	.4byte gUnknown_03000450
_080301FC:
	.4byte 0x0000070C
_08030200:
	.4byte gUnknown_03005050
_08030204:
	.4byte gUnknown_03000948
_08030208:
	.4byte gUnknown_03006C80
_0803020C:
	.4byte gUnknown_03000830
_08030210:
	.4byte 0x80010000
	THUMB_FUNC_END sub_08030100

	THUMB_FUNC_START sub_08030214
sub_08030214: @ 0x08030214
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _08030248  @ =0x06014000
	ldr r3, _0803024C  @ =gUnknown_08427910
	lsl r1, r4, #3
	add r1, r1, r3
	ldr r1, [r1]
	lsl r2, r4, #1
	add r2, r2, #1
	lsl r2, r2, #2
	add r2, r2, r3
	ldrh r2, [r2]
	bl 0x080009F4
	ldr r0, _08030250  @ =0x80020000
	bl play_sound
	cmp r4, #4
	bhi _0803030A
	lsl r0, r4, #2
	ldr r1, _08030254  @ =0x08030258
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08030248:
	.4byte 0x06014000
_0803024C:
	.4byte gUnknown_08427910
_08030250:
	.4byte 0x80020000
_08030254:
	.4byte 0x08030258
	.4byte _0803026C
	.4byte _0803028A
	.4byte _080302B4
	.4byte _080302D2
	.4byte _080302FA
_0803026C:
	mov r0, #70
	mov r1, #8
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #9
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #220
	lsl r0, r0, #1
	bl play_sound
	b _0803030A
_0803028A:
	mov r0, #70
	mov r1, #10
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #14
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #19
	add r2, r4, #0
	bl sub_0804C8A8
	ldr r0, _080302B0  @ =0x000001B5
	bl play_sound
	b _0803030A
_080302B0:
	.4byte 0x000001B5
_080302B4:
	mov r0, #70
	mov r1, #12
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #16
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #218
	lsl r0, r0, #1
	bl play_sound
	b _0803030A
_080302D2:
	mov r0, #70
	mov r1, #13
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #15
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #18
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #219
	lsl r0, r0, #1
	bl play_sound
	b _0803030A
_080302FA:
	mov r0, #70
	mov r1, #17
	add r2, r4, #0
	bl sub_0804C8A8
	ldr r0, _08030310  @ =0x000001B7
	bl play_sound
_0803030A:
	pop {r4}
	pop {r0}
	bx r0
_08030310:
	.4byte 0x000001B7
	THUMB_FUNC_END sub_08030214

	THUMB_FUNC_START sub_08030314
sub_08030314: @ 0x08030314
	push {r4,lr}
	ldr r4, _0803036C  @ =gUnknown_02016D60
	ldrb r0, [r4, #8]
	bl sub_08030214
	ldrb r2, [r4, #8]
	mov r0, #70
	mov r1, #6
	bl sub_0804C8A8
	ldr r4, _08030370  @ =gLCDRegisterBuffer
	ldrb r2, [r4]
	mov r0, #70
	mov r1, #7
	bl sub_0804C8A8
	ldr r1, _08030374  @ =gUnknown_03000450
	str r0, [r1]
	mov r0, #5
	bl sub_08036704
	ldr r1, _08030378  @ =gUnknown_03005050
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0803037C  @ =gSubState
	mov r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08030362
	mov r0, #70
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #120
	strh r1, [r0, #50]
	mov r1, #80
	strh r1, [r0, #54]
_08030362:
	bl sub_08030724
	pop {r4}
	pop {r0}
	bx r0
_0803036C:
	.4byte gUnknown_02016D60
_08030370:
	.4byte gLCDRegisterBuffer
_08030374:
	.4byte gUnknown_03000450
_08030378:
	.4byte gUnknown_03005050
_0803037C:
	.4byte gSubState
	THUMB_FUNC_END sub_08030314

	THUMB_FUNC_START sub_08030380
sub_08030380: @ 0x08030380
	push {r4,lr}
	ldr r4, _080303F0  @ =gUnknown_02016D60
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030408
	bl sub_08059A44
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _08030404
	ldr r2, _080303F4  @ =gUnknown_030004A0
	ldrh r0, [r2]
	mov r3, #132
	lsl r3, r3, #7
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r1, r2, #0
	add r1, r1, #96
	ldr r0, _080303F8  @ =0x00003D3F
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #63
	strh r0, [r1]
	sub r1, r1, #8
	mov r0, #120
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #160
	strh r0, [r1]
	mov r0, #70
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	ldr r1, _080303FC  @ =gUnknown_03000450
	str r0, [r1]
	mov r0, #70
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #4
	mov r2, #0
	bl sub_0804C8A8
	ldr r1, _08030400  @ =gUnknown_03005050
	mov r0, #3
	strb r0, [r1]
	mov r0, #60
	strh r0, [r4, #4]
	b _08030408
_080303F0:
	.4byte gUnknown_02016D60
_080303F4:
	.4byte gUnknown_030004A0
_080303F8:
	.4byte 0x00003D3F
_080303FC:
	.4byte gUnknown_03000450
_08030400:
	.4byte gUnknown_03005050
_08030404:
	bl sub_08030314
_08030408:
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030380

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030418
sub_08030418: @ 0x08030418
	push {r4,r5,lr}
	ldr r4, _0803042C  @ =gSubState
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803049C
	cmp r0, #1
	bgt _08030430
	cmp r0, #0
	beq _08030436
	b _080304DE
_0803042C:
	.4byte gSubState
_08030430:
	cmp r0, #2
	beq _080304CC
	b _080304DE
_08030436:
	ldr r1, _08030490  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080304DE
	mov r2, #0
	ldr r0, _08030494  @ =gUnknown_03006C80
	ldrb r3, [r0]
	add r4, r0, #0
	cmp r2, r3
	bcs _08030478
	ldr r0, [r4, #40]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08030478
	add r1, r3, #0
	add r5, r4, #0
	add r5, r5, #40
	mov r3, #8
_08030462:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcs _08030478
	lsl r0, r2, #3
	add r0, r0, r5
	ldr r0, [r0]
	and r0, r0, r3
	cmp r0, #0
	bne _08030462
_08030478:
	ldrb r4, [r4]
	cmp r2, r4
	beq _08030484
	mov r0, #32
	bl play_sound
_08030484:
	ldr r1, _08030498  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080304DE
	.byte 0x00
	.byte 0x00
_08030490:
	.4byte gUnknown_02016D60
_08030494:
	.4byte gUnknown_03006C80
_08030498:
	.4byte gSubState
_0803049C:
	ldr r3, _080304B0  @ =gUnknown_02016D60
	ldrh r1, [r3, #38]
	mov r2, #38
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble _080304B4
	sub r0, r1, #4
	strh r0, [r3, #38]
	b _080304CC
	.byte 0x00
	.byte 0x00
_080304B0:
	.4byte gUnknown_02016D60
_080304B4:
	mov r0, #0
	strh r0, [r3, #38]
	ldr r2, _080304F0  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _080304F4  @ =0x0000BFFF
	and r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r3, #4]
_080304CC:
	ldr r1, _080304F8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080304DE
	bl sub_08030314
_080304DE:
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r4,r5}
	pop {r0}
	bx r0
_080304F0:
	.4byte gUnknown_030004A0
_080304F4:
	.4byte 0x0000BFFF
_080304F8:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08030418

	THUMB_FUNC_START sub_080304FC
sub_080304FC: @ 0x080304FC
	push {lr}
	bl sub_08037554
	cmp r0, #0
	beq _080305AC
	bl sub_08037750
	bl 0x0800099C
	ldr r0, _0803052C  @ =gUnknown_03005E10
	ldrh r1, [r0]
	mov r0, #96
	and r0, r0, r1
	cmp r0, #0
	beq _08030538
	ldr r1, _08030530  @ =gUnknown_02016D60
	ldrb r0, [r1, #8]
	add r2, r1, #0
	ldrb r3, [r1, #11]
	cmp r0, r3
	beq _08030534
	add r0, r0, #1
	b _08030556
	.byte 0x00
	.byte 0x00
_0803052C:
	.4byte gUnknown_03005E10
_08030530:
	.4byte gUnknown_02016D60
_08030534:
	mov r0, #0
	b _08030556
_08030538:
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08030566
	ldr r1, _08030550  @ =gUnknown_02016D60
	ldrb r0, [r1, #8]
	add r2, r1, #0
	cmp r0, #0
	bne _08030554
	ldrb r0, [r2, #11]
	b _08030556
	.byte 0x00
	.byte 0x00
_08030550:
	.4byte gUnknown_02016D60
_08030554:
	sub r0, r0, #1
_08030556:
	strb r0, [r1, #8]
	ldrb r0, [r2, #8]
	bl sub_08030214
	mov r0, #61
	bl play_sound
	b _08030598
_08030566:
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08030598
	ldr r0, _080305B0  @ =0x80010000
	bl play_sound
	mov r0, #62
	bl play_sound
	mov r0, #77
	bl play_sound
	ldr r0, _080305B4  @ =gUnknown_03000450
	ldr r0, [r0]
	mov r1, #0
	bl sub_080599A8
	ldr r1, _080305B8  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	bl sub_08036704
_08030598:
	bl sub_08030728
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_08037574
_080305AC:
	pop {r0}
	bx r0
_080305B0:
	.4byte 0x80010000
_080305B4:
	.4byte gUnknown_03000450
_080305B8:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080304FC

	THUMB_FUNC_START sub_080305BC
sub_080305BC: @ 0x080305BC
	push {r4-r6,lr}
	bl sub_08037554
	cmp r0, #0
	beq _0803064E
	bl sub_08037750
	bl sub_08059A2C
	cmp r0, #0
	beq _0803063E
	bl sub_0800BED8
	mov r6, #160
	lsl r6, r6, #19
	mov r0, #0
	strh r0, [r6]
	ldr r5, _08030628  @ =gPaletteBuf2
	mov r4, #0
	strh r4, [r5]
	bl sub_080123BC
	bl sub_0801239C
	bl sub_08036760
	bl sub_08059A44
	strh r4, [r6]
	strh r4, [r5]
	ldr r4, _0803062C  @ =gUnknown_03006C80
	ldr r1, _08030630  @ =gUnknown_08427938
	ldr r2, _08030634  @ =gUnknown_02016D60
	ldrb r0, [r2, #8]
	add r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r4, #1]
	mov r3, #0
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _08030610
	mov r3, #1
_08030610:
	strb r3, [r4, #2]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _08030638
	ldrb r0, [r2, #10]
	cmp r0, #1
	bls _08030638
	mov r0, #3
	bl set_main_state
	b _0803063E
_08030628:
	.4byte gPaletteBuf2
_0803062C:
	.4byte gUnknown_03006C80
_08030630:
	.4byte gUnknown_08427938
_08030634:
	.4byte gUnknown_02016D60
_08030638:
	mov r0, #2
	bl set_main_state
_0803063E:
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_08037574
_0803064E:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080305BC

	THUMB_FUNC_START sub_08030654
sub_08030654: @ 0x08030654
	push {r4,r5,lr}
	ldr r0, _08030698  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _08030718
	add r5, r1, #0
	ldrh r0, [r5, #50]
	sub r0, r0, #112
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	mov r1, #8
	neg r1, r1
	cmp r0, r1
	bge _08030676
	ldr r2, _0803069C  @ =0x0000FFF8
_08030676:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #24
	ble _08030680
	mov r2, #24
_08030680:
	ldrh r3, [r4, #32]
	mov r0, #32
	ldrsh r1, [r4, r0]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	beq _080306A4
	add r2, r4, #0
	cmp r1, r0
	bge _080306A0
	add r0, r3, #1
	b _080306A2
_08030698:
	.4byte gUnknown_03000450
_0803069C:
	.4byte 0x0000FFF8
_080306A0:
	sub r0, r3, #1
_080306A2:
	strh r0, [r2, #32]
_080306A4:
	ldr r3, _080306F4  @ =gUnknown_030004A0
	ldrh r1, [r4, #32]
	strh r1, [r3, #46]
	ldr r2, _080306F8  @ =0x0000FFFF
	add r0, r2, #0
	and r0, r0, r1
	strh r0, [r3, #34]
	and r0, r0, r2
	ldr r1, _080306FC  @ =gUnknown_02016D60
	ldrh r1, [r1, #38]
	sub r0, r0, r1
	strh r0, [r3, #22]
	ldrh r0, [r5, #54]
	sub r0, r0, #72
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	mov r1, #8
	neg r1, r1
	add r5, r3, #0
	cmp r0, r1
	bge _080306D2
	ldr r2, _08030700  @ =0x0000FFF8
_080306D2:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #24
	ble _080306DC
	mov r2, #24
_080306DC:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r1, [r4, r0]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	beq _08030708
	add r2, r4, #0
	cmp r1, r0
	bge _08030704
	add r0, r3, #1
	b _08030706
_080306F4:
	.4byte gUnknown_030004A0
_080306F8:
	.4byte 0x0000FFFF
_080306FC:
	.4byte gUnknown_02016D60
_08030700:
	.4byte 0x0000FFF8
_08030704:
	sub r0, r3, #1
_08030706:
	strh r0, [r2, #34]
_08030708:
	ldrh r0, [r4, #34]
	strh r0, [r5, #48]
	ldr r2, _08030720  @ =0x0000FFFF
	add r1, r2, #0
	and r1, r1, r0
	strh r1, [r5, #36]
	and r1, r1, r2
	strh r1, [r5, #24]
_08030718:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030720:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08030654

	THUMB_FUNC_START sub_08030724
sub_08030724: @ 0x08030724
	bx lr
	THUMB_FUNC_END sub_08030724

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030728
sub_08030728: @ 0x08030728
	bx lr
	THUMB_FUNC_END sub_08030728

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803072C
sub_0803072C: @ 0x0803072C
	ldr r1, _08030740  @ =gMainState
	mov r0, #6
	strb r0, [r1]
	ldr r0, _08030744  @ =gUnknown_03005050
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08030748  @ =gSubState
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08030740:
	.4byte gMainState
_08030744:
	.4byte gUnknown_03005050
_08030748:
	.4byte gSubState
	THUMB_FUNC_END sub_0803072C

	.ALIGN 2, 0
