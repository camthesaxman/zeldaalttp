	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08135BCC
sub_08135BCC: @ 0x08135BCC
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r2, #0
	cmp r0, #4
	bne _08135BE8
	ldr r1, _08135BE0  @ =0x03000020
	ldr r0, _08135BE4  @ =0x084272A4
	str r0, [r1]
	b _08135C04
_08135BE0:
	.4byte 0x03000020
_08135BE4:
	.4byte 0x084272A4
_08135BE8:
	cmp r0, #64
	bne _08135BFC
	ldr r1, _08135BF4  @ =0x03000020
	ldr r0, _08135BF8  @ =0x084272B0
	str r0, [r1]
	b _08135C04
_08135BF4:
	.4byte 0x03000020
_08135BF8:
	.4byte 0x084272B0
_08135BFC:
	ldr r1, _08135C0C  @ =0x03000020
	ldr r0, _08135C10  @ =0x084272A4
	str r0, [r1]
	mov r2, #1
_08135C04:
	add r0, r2, #0
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08135C0C:
	.4byte 0x03000020
_08135C10:
	.4byte 0x084272A4
	THUMB_FUNC_END sub_08135BCC

	THUMB_FUNC_START sub_08135C14
sub_08135C14: @ 0x08135C14
	push {lr}
	ldr r1, _08135C34  @ =0x03000012
	ldrh r0, [r1]
	cmp r0, #0
	beq _08135C30
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08135C30
	ldr r1, _08135C38  @ =0x03000014
	mov r0, #1
	strb r0, [r1]
_08135C30:
	pop {r0}
	bx r0
_08135C34:
	.4byte 0x03000012
_08135C38:
	.4byte 0x03000014
	THUMB_FUNC_END sub_08135C14

	THUMB_FUNC_START sub_08135C3C
sub_08135C3C: @ 0x08135C3C
	push {lr}
	add r2, r1, #0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #3
	bhi _08135C70
	ldr r0, _08135C60  @ =0x03000010
	strb r1, [r0]
	ldr r1, _08135C64  @ =0x03000018
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r3, _08135C68  @ =0x04000100
	add r0, r0, r3
	str r0, [r1]
	ldr r0, _08135C6C  @ =0x08135C15
	str r0, [r2]
	mov r0, #0
	b _08135C72
_08135C60:
	.4byte 0x03000010
_08135C64:
	.4byte 0x03000018
_08135C68:
	.4byte 0x04000100
_08135C6C:
	.4byte 0x08135C15
_08135C70:
	mov r0, #1
_08135C72:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08135C3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135C78
sub_08135C78: @ 0x08135C78
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08135CE4  @ =0x0300001C
	ldr r1, _08135CE8  @ =0x04000208
	mov r9, r1
	ldrh r1, [r1]
	strh r1, [r2]
	mov r6, #0
	mov r2, r9
	strh r6, [r2]
	ldr r3, _08135CEC  @ =0x03000018
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _08135CF0  @ =0x04000202
	ldr r4, _08135CF4  @ =0x03000010
	ldrb r1, [r4]
	mov r2, #8
	add r7, r2, #0
	lsl r7, r7, r1
	add r1, r7, #0
	strh r1, [r3]
	sub r3, r3, #2
	ldrb r1, [r4]
	lsl r2, r2, r1
	ldrh r1, [r3]
	orr r1, r1, r2
	strh r1, [r3]
	ldr r1, _08135CF8  @ =0x03000014
	strb r6, [r1]
	ldr r2, _08135CFC  @ =0x03000012
	ldrh r1, [r0]
	strh r1, [r2]
	add r0, r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	add r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	mov r0, #1
	mov r3, r9
	strh r0, [r3]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135CE4:
	.4byte 0x0300001C
_08135CE8:
	.4byte 0x04000208
_08135CEC:
	.4byte 0x03000018
_08135CF0:
	.4byte 0x04000202
_08135CF4:
	.4byte 0x03000010
_08135CF8:
	.4byte 0x03000014
_08135CFC:
	.4byte 0x03000012
	THUMB_FUNC_END sub_08135C78

	THUMB_FUNC_START sub_08135D00
sub_08135D00: @ 0x08135D00
	ldr r3, _08135D30  @ =0x04000208
	mov r1, #0
	strh r1, [r3]
	ldr r2, _08135D34  @ =0x03000018
	ldr r0, [r2]
	strh r1, [r0]
	add r0, r0, #2
	str r0, [r2]
	strh r1, [r0]
	sub r0, r0, #2
	str r0, [r2]
	ldr r2, _08135D38  @ =0x04000200
	ldr r0, _08135D3C  @ =0x03000010
	ldrb r0, [r0]
	mov r1, #8
	lsl r1, r1, r0
	ldrh r0, [r2]
	bic r0, r0, r1
	strh r0, [r2]
	ldr r0, _08135D40  @ =0x0300001C
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.byte 0x00
	.byte 0x00
_08135D30:
	.4byte 0x04000208
_08135D34:
	.4byte 0x03000018
_08135D38:
	.4byte 0x04000200
_08135D3C:
	.4byte 0x03000010
_08135D40:
	.4byte 0x0300001C
	THUMB_FUNC_END sub_08135D00

	THUMB_FUNC_START sub_08135D44
sub_08135D44: @ 0x08135D44
	push {r4-r6,lr}
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r4, _08135DA4  @ =0x04000208
	ldrh r3, [r4]
	add r6, r3, #0
	mov r3, #0
	strh r3, [r4]
	ldr r5, _08135DA8  @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _08135DAC  @ =0x0000F8FF
	and r4, r4, r3
	ldr r3, _08135DB0  @ =0x03000020
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orr r4, r4, r3
	strh r4, [r5]
	ldr r3, _08135DB4  @ =0x040000D4
	str r0, [r3]
	ldr r0, _08135DB8  @ =0x040000D8
	str r1, [r0]
	ldr r1, _08135DBC  @ =0x040000DC
	mov r0, #128
	lsl r0, r0, #24
	orr r2, r2, r0
	str r2, [r1]
	add r1, r1, #2
	mov r2, #128
	lsl r2, r2, #8
	add r0, r2, #0
	ldrh r1, [r1]
	and r0, r0, r1
	cmp r0, #0
	beq _08135D98
	ldr r2, _08135DC0  @ =0x040000DE
	mov r0, #128
	lsl r0, r0, #8
	add r1, r0, #0
_08135D90:
	ldrh r0, [r2]
	and r0, r0, r1
	cmp r0, #0
	bne _08135D90
_08135D98:
	ldr r0, _08135DA4  @ =0x04000208
	strh r6, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08135DA4:
	.4byte 0x04000208
_08135DA8:
	.4byte 0x04000204
_08135DAC:
	.4byte 0x0000F8FF
_08135DB0:
	.4byte 0x03000020
_08135DB4:
	.4byte 0x040000D4
_08135DB8:
	.4byte 0x040000D8
_08135DBC:
	.4byte 0x040000DC
_08135DC0:
	.4byte 0x040000DE
	THUMB_FUNC_END sub_08135D44

	THUMB_FUNC_START sub_08135DC4
sub_08135DC4: @ 0x08135DC4
	push {r4-r6,lr}
	sub sp, sp, #136
	add r5, r1, #0
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r0, _08135DDC  @ =0x03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	bcc _08135DE4
	ldr r0, _08135DE0  @ =0x000080FF
	b _08135E66
_08135DDC:
	.4byte 0x03000020
_08135DE0:
	.4byte 0x000080FF
_08135DE4:
	ldr r0, _08135E70  @ =0x03000020
	add r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsl r0, r1, #1
	mov r4, sp
	add r2, r0, r4
	add r2, r2, #2
	mov r4, #0
	cmp r4, r1
	bcs _08135E0E
_08135DFA:
	strh r3, [r2]
	sub r2, r2, #2
	lsr r3, r3, #1
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bcc _08135DFA
_08135E0E:
	mov r0, #1
	strh r0, [r2]
	sub r2, r2, #2
	strh r0, [r2]
	mov r4, #208
	lsl r4, r4, #20
	ldr r0, _08135E70  @ =0x03000020
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	add r2, r2, #3
	mov r0, sp
	add r1, r4, #0
	bl 0x08135D44
	add r0, r4, #0
	mov r1, sp
	mov r2, #68
	bl 0x08135D44
	add r2, sp, #8
	add r5, r5, #6
	mov r4, #0
	mov r6, #1
_08135E3C:
	mov r1, #0
	mov r3, #0
_08135E40:
	lsl r1, r1, #17
	ldrh r0, [r2]
	and r0, r0, r6
	lsr r1, r1, #16
	orr r1, r1, r0
	add r2, r2, #2
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #15
	bls _08135E40
	strh r1, [r5]
	sub r5, r5, #2
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _08135E3C
	mov r0, #0
_08135E66:
	add sp, sp, #136
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08135E70:
	.4byte 0x03000020
	THUMB_FUNC_END sub_08135DC4

	THUMB_FUNC_START sub_08135E74
sub_08135E74: @ 0x08135E74
	push {r4,r5,lr}
	sub sp, sp, #164
	add r5, r1, #0
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r0, _08135E8C  @ =0x03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	bcc _08135E94
	ldr r0, _08135E90  @ =0x000080FF
	b _08135F38
_08135E8C:
	.4byte 0x03000020
_08135E90:
	.4byte 0x000080FF
_08135E94:
	ldr r0, _08135ED4  @ =0x03000020
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsl r0, r0, #1
	mov r1, sp
	add r3, r0, r1
	add r3, r3, #132
	mov r0, #0
	strh r0, [r3]
	sub r3, r3, #2
	mov r1, #0
_08135EAA:
	ldrh r2, [r5]
	add r5, r5, #2
	mov r0, #0
_08135EB0:
	strh r2, [r3]
	sub r3, r3, #2
	lsr r2, r2, #1
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bls _08135EB0
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #3
	bls _08135EAA
	mov r1, #0
	ldr r0, _08135ED4  @ =0x03000020
	add r2, r0, #0
	ldr r0, [r0]
	b _08135EE6
_08135ED4:
	.4byte 0x03000020
_08135ED8:
	strh r4, [r3]
	sub r3, r3, #2
	lsr r4, r4, #1
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, [r2]
_08135EE6:
	ldrb r0, [r0, #8]
	cmp r1, r0
	bcc _08135ED8
	mov r0, #0
	strh r0, [r3]
	sub r3, r3, #2
	mov r0, #1
	strh r0, [r3]
	mov r1, #208
	lsl r1, r1, #20
	ldr r0, _08135F40  @ =0x03000020
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	add r2, r2, #67
	mov r0, sp
	bl 0x08135D44
	ldr r0, _08135F44  @ =0x084272BC
	bl 0x08135C78
	mov r4, #0
	mov r1, #208
	lsl r1, r1, #20
	mov r3, #1
	ldr r2, _08135F48  @ =0x03000014
_08135F18:
	ldrh r0, [r1]
	and r0, r0, r3
	cmp r0, #0
	bne _08135F32
	ldrb r0, [r2]
	cmp r0, #0
	beq _08135F18
	ldrh r0, [r1]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08135F32
	ldr r4, _08135F4C  @ =0x0000C001
_08135F32:
	bl 0x08135D00
	add r0, r4, #0
_08135F38:
	add sp, sp, #164
	pop {r4,r5}
	pop {r1}
	bx r1
_08135F40:
	.4byte 0x03000020
_08135F44:
	.4byte 0x084272BC
_08135F48:
	.4byte 0x03000014
_08135F4C:
	.4byte 0x0000C001
	THUMB_FUNC_END sub_08135E74

	THUMB_FUNC_START sub_08135F50
sub_08135F50: @ 0x08135F50
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r1, #0
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r5, #0
	ldr r0, _08135F6C  @ =0x03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bcc _08135F74
	ldr r0, _08135F70  @ =0x000080FF
	b _08135F9E
	.byte 0x00
	.byte 0x00
_08135F6C:
	.4byte 0x03000020
_08135F70:
	.4byte 0x000080FF
_08135F74:
	add r0, r1, #0
	mov r1, sp
	bl 0x08135DC4
	mov r2, sp
	mov r3, #0
	b _08135F8C
_08135F82:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #3
	bhi _08135F9C
_08135F8C:
	ldrh r1, [r4]
	ldrh r0, [r2]
	add r2, r2, #2
	add r4, r4, #2
	cmp r1, r0
	beq _08135F82
	mov r5, #128
	lsl r5, r5, #8
_08135F9C:
	add r0, r5, #0
_08135F9E:
	add sp, sp, #8
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08135F50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08135FA8
sub_08135FA8: @ 0x08135FA8
	push {r4-r6,lr}
	add r5, r1, #0
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r6, #0
	b _08135FBA
_08135FB4:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
_08135FBA:
	cmp r6, #2
	bhi _08135FDE
	add r0, r4, #0
	add r1, r5, #0
	bl 0x08135E74
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	bne _08135FB4
	add r0, r4, #0
	add r1, r5, #0
	bl 0x08135F50
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	bne _08135FB4
_08135FDE:
	add r0, r2, #0
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08135FA8

	.ALIGN 2, 0
