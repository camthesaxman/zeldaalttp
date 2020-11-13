	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08127E4C
sub_08127E4C: @ 0x08127E4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r0, _08127EBC  @ =gUnknown_03002230
	ldr r1, _08127EC0  @ =0x00001AF0
	add r5, r0, r1
	ldrh r1, [r5]
	cmp r1, #0
	beq _08127E9C
	ldr r1, _08127EC4  @ =gUnknown_08180BCC
	add r2, r0, #0
	ldr r3, _08127EC8  @ =0x00001AF2
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r1
	ldrh r2, [r1]
	ldr r4, _08127EBC  @ =gUnknown_03002230
	ldr r6, _08127ECC  @ =0x00001AF6
	add r1, r4, r6
	mov r4, #0
	mov r3, #0
	strh r2, [r1]
	ldr r1, _08127ED0  @ =gUnknown_08180BD2
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r2, _08127EBC  @ =gUnknown_03002230
	sub r6, r6, #2
	add r1, r2, r6
	strh r0, [r1]
	strh r3, [r5]
	ldrh r0, [r1]
	ldr r1, _08127ED4  @ =gUnknown_02010470
	add r0, r0, r1
	strb r4, [r0]
_08127E9C:
	ldr r2, _08127EBC  @ =gUnknown_03002230
	ldr r4, _08127ED8  @ =0x00001AD2
	add r3, r2, r4
	ldrh r1, [r3]
	ldr r5, _08127EDC  @ =gUnknown_02005480
	add r0, r1, r5
	ldrb r2, [r0]
	cmp r2, #31
	bne _08127EE0
	add r0, r1, #1
	strh r0, [r3]
	ldrh r0, [r3]
	add r0, r0, r5
	ldrb r2, [r0]
	b _08127F00
	.byte 0x00
	.byte 0x00
_08127EBC:
	.4byte gUnknown_03002230
_08127EC0:
	.4byte 0x00001AF0
_08127EC4:
	.4byte gUnknown_08180BCC
_08127EC8:
	.4byte 0x00001AF2
_08127ECC:
	.4byte 0x00001AF6
_08127ED0:
	.4byte gUnknown_08180BD2
_08127ED4:
	.4byte gUnknown_02010470
_08127ED8:
	.4byte 0x00001AD2
_08127EDC:
	.4byte gUnknown_02005480
_08127EE0:
	cmp r2, #127
	bhi _08127F00
	ldr r6, _08127F7C  @ =gUnknown_03002230
	ldr r1, _08127F80  @ =0x0000098E
	add r0, r6, r1
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08127F00
	mov r3, #128
	lsl r3, r3, #1
	add r0, r2, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
_08127F00:
	ldr r0, _08127F84  @ =gUnknown_08195D98
	add r0, r2, r0
	ldrb r5, [r0]
	mov r0, #248
	lsl r0, r0, #1
	and r0, r0, r2
	lsl r0, r0, #1
	mov r1, #15
	and r2, r2, r1
	add r0, r0, r2
	lsl r0, r0, #5
	ldr r1, _08127F88  @ =gUnknown_083B5758
	add r6, r0, r1
	ldr r4, _08127F7C  @ =gUnknown_03002230
	ldr r0, _08127F8C  @ =0x00001AF4
	add r1, r4, r0
	ldrh r0, [r1]
	ldr r3, _08127F90  @ =gUnknown_02010471
	add r2, r0, r3
	ldr r4, _08127F94  @ =gUnknown_02010470
	add r0, r0, r4
	ldrb r0, [r0]
	add r0, r5, r0
	strb r0, [r2]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r1, _08127F98  @ =gUnknown_0201046F
	add r0, r0, r1
	ldrb r1, [r0]
	mov r3, #7
	and r3, r3, r1
	cmp r3, #0
	bne _08127FA4
	lsl r1, r1, #2
	ldr r2, _08127F7C  @ =gUnknown_03002230
	ldr r3, _08127F9C  @ =0x00001AF6
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r4, _08127FA0  @ =gUnknown_02003080
	add r0, r0, r4
	add r1, r1, r0
	mov r7, #0
	mov r3, #160
	lsl r3, r3, #2
	mov r2, #240
	lsl r2, r2, #1
_08127F64:
	ldr r0, [r6]
	str r0, [r1]
	cmp r7, #7
	bne _08127F70
	add r1, r1, r3
	add r6, r6, r2
_08127F70:
	add r7, r7, #1
	add r6, r6, #4
	add r1, r1, #4
	cmp r7, #15
	ble _08127F64
	b _08128092
_08127F7C:
	.4byte gUnknown_03002230
_08127F80:
	.4byte 0x0000098E
_08127F84:
	.4byte gUnknown_08195D98
_08127F88:
	.4byte gUnknown_083B5758
_08127F8C:
	.4byte 0x00001AF4
_08127F90:
	.4byte gUnknown_02010471
_08127F94:
	.4byte gUnknown_02010470
_08127F98:
	.4byte gUnknown_0201046F
_08127F9C:
	.4byte 0x00001AF6
_08127FA0:
	.4byte gUnknown_02003080
_08127FA4:
	mov r0, #248
	and r1, r1, r0
	lsl r1, r1, #2
	ldr r2, _08128008  @ =gUnknown_03002230
	ldr r4, _0812800C  @ =0x00001AF6
	add r0, r2, r4
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r2, _08128010  @ =gUnknown_02003080
	add r0, r0, r2
	add r4, r1, r0
	lsl r2, r3, #2
	add r0, r2, #0
	mov r12, r0
	add r0, r3, r5
	add r1, r2, #0
	cmp r0, #8
	bgt _0812801C
	mov r7, #0
	ldr r0, _08128014  @ =gUnknown_08180BF8
	add r0, r1, r0
	ldr r3, [r0]
	ldr r0, _08128018  @ =gUnknown_08180BD8
	add r0, r1, r0
	ldr r2, [r0]
	mov r1, #160
	lsl r1, r1, #2
	mov r8, r1
	mov r5, #240
	lsl r5, r5, #1
	mov r9, r5
_08127FE4:
	ldr r1, [r4]
	and r1, r1, r3
	ldr r0, [r6]
	mov r5, r12
	lsl r0, r0, r5
	and r0, r0, r2
	orr r1, r1, r0
	str r1, [r4]
	cmp r7, #7
	bne _08127FFC
	add r4, r4, r8
	add r6, r6, r9
_08127FFC:
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #15
	ble _08127FE4
	b _08128092
_08128008:
	.4byte gUnknown_03002230
_0812800C:
	.4byte 0x00001AF6
_08128010:
	.4byte gUnknown_02003080
_08128014:
	.4byte gUnknown_08180BF8
_08128018:
	.4byte gUnknown_08180BD8
_0812801C:
	add r5, r4, #0
	add r5, r5, #32
	sub r0, r0, #8
	lsl r0, r0, #24
	mov r7, #0
	ldr r3, _081280B0  @ =gUnknown_08180BF8
	add r1, r2, r3
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, _081280B4  @ =gUnknown_08180BD8
	add r2, r2, r1
	ldr r2, [r2]
	str r2, [sp, #4]
	lsr r0, r0, #22
	add r1, r0, r1
	ldr r1, [r1]
	mov r10, r1
	add r0, r0, r3
	ldr r0, [r0]
	mov r9, r0
	mov r0, #32
	mov r1, r12
	sub r1, r0, r1
	mov r8, r1
_0812804C:
	ldr r2, [r6]
	ldr r1, [r4]
	ldr r3, [sp]
	and r1, r1, r3
	add r0, r2, #0
	mov r3, r12
	lsl r0, r0, r3
	ldr r3, [sp, #4]
	and r0, r0, r3
	orr r1, r1, r0
	str r1, [r4]
	ldr r0, [r5]
	mov r1, r10
	and r0, r0, r1
	mov r3, r8
	lsr r2, r2, r3
	mov r1, r9
	and r2, r2, r1
	orr r0, r0, r2
	str r0, [r5]
	cmp r7, #7
	bne _08128086
	mov r2, #160
	lsl r2, r2, #2
	add r4, r4, r2
	add r5, r5, r2
	mov r3, #240
	lsl r3, r3, #1
	add r6, r6, r3
_08128086:
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #15
	ble _0812804C
_08128092:
	ldr r4, _081280B8  @ =gUnknown_03002230
	ldr r5, _081280BC  @ =0x00001AD2
	add r1, r4, r5
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
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
_081280B0:
	.4byte gUnknown_08180BF8
_081280B4:
	.4byte gUnknown_08180BD8
_081280B8:
	.4byte gUnknown_03002230
_081280BC:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_08127E4C

	THUMB_FUNC_START sub_081280C0
sub_081280C0: @ 0x081280C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _081281B4  @ =gUnknown_03002230
	ldr r1, _081281B8  @ =0x00001AF0
	add r5, r0, r1
	ldrh r1, [r5]
	cmp r1, #0
	beq _08128110
	ldr r1, _081281BC  @ =gUnknown_08180C18
	add r2, r0, #0
	ldr r3, _081281C0  @ =0x00001AF2
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r1
	ldrh r2, [r1]
	ldr r4, _081281B4  @ =gUnknown_03002230
	ldr r6, _081281C4  @ =0x00001AF6
	add r1, r4, r6
	mov r4, #0
	mov r3, #0
	strh r2, [r1]
	ldr r1, _081281C8  @ =gUnknown_08180C1E
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #1
	ldr r7, _081281B4  @ =gUnknown_03002230
	ldr r2, _081281CC  @ =0x00001AF4
	add r1, r7, r2
	strh r0, [r1]
	strh r3, [r5]
	ldrh r0, [r1]
	ldr r3, _081281D0  @ =gUnknown_02010470
	add r0, r0, r3
	strb r4, [r0]
_08128110:
	ldr r4, _081281B4  @ =gUnknown_03002230
	ldr r5, _081281D4  @ =0x00001AD2
	add r0, r4, r5
	ldrh r0, [r0]
	ldr r6, _081281D8  @ =gUnknown_02005481
	add r1, r0, r6
	ldrb r3, [r1]
	ldr r7, _081281DC  @ =gUnknown_02005480
	add r0, r0, r7
	ldrb r1, [r0]
	ldr r0, _081281CC  @ =0x00001AF4
	add r4, r4, r0
	ldrh r0, [r4]
	ldr r5, _081281E0  @ =gUnknown_02010471
	add r2, r0, r5
	ldr r6, _081281D0  @ =gUnknown_02010470
	add r0, r0, r6
	ldrb r0, [r0]
	add r0, r0, #11
	strb r0, [r2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r0, _081281E4  @ =gUnknown_08180C24
	lsl r1, r1, #2
	add r1, r1, r0
	mov r5, #248
	add r0, r3, #0
	and r0, r0, r5
	lsl r0, r0, #1
	mov r2, #7
	and r3, r3, r2
	add r0, r0, r3
	lsl r0, r0, #6
	ldr r1, [r1]
	add r1, r1, r0
	mov r12, r1
	ldrh r0, [r4]
	ldr r7, _081281E8  @ =gUnknown_0201046F
	add r0, r0, r7
	ldrb r1, [r0]
	add r3, r1, #0
	and r3, r3, r2
	cmp r3, #0
	bne _081281F8
	lsl r1, r1, #2
	ldr r2, _081281B4  @ =gUnknown_03002230
	ldr r3, _081281C4  @ =0x00001AF6
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r4, _081281EC  @ =gUnknown_02003080
	add r0, r0, r4
	add r2, r1, r0
	mov r5, #0
	ldr r7, _081281F0  @ =0x00000FFF
	ldr r6, _081281F4  @ =0xFFFFF000
	mov r4, #152
	lsl r4, r4, #2
	mov r3, #240
	lsl r3, r3, #1
_0812818C:
	mov r1, r12
	ldr r0, [r1]
	str r0, [r2]
	ldr r1, [r1, #32]
	and r1, r1, r7
	ldr r0, [r2, #32]
	and r0, r0, r6
	orr r1, r1, r0
	str r1, [r2, #32]
	cmp r5, #7
	bne _081281A6
	add r2, r2, r4
	add r12, r12, r3
_081281A6:
	add r5, r5, #1
	mov r0, #4
	add r12, r12, r0
	add r2, r2, #4
	cmp r5, #15
	ble _0812818C
	b _081283B0
_081281B4:
	.4byte gUnknown_03002230
_081281B8:
	.4byte 0x00001AF0
_081281BC:
	.4byte gUnknown_08180C18
_081281C0:
	.4byte 0x00001AF2
_081281C4:
	.4byte 0x00001AF6
_081281C8:
	.4byte gUnknown_08180C1E
_081281CC:
	.4byte 0x00001AF4
_081281D0:
	.4byte gUnknown_02010470
_081281D4:
	.4byte 0x00001AD2
_081281D8:
	.4byte gUnknown_02005481
_081281DC:
	.4byte gUnknown_02005480
_081281E0:
	.4byte gUnknown_02010471
_081281E4:
	.4byte gUnknown_08180C24
_081281E8:
	.4byte gUnknown_0201046F
_081281EC:
	.4byte gUnknown_02003080
_081281F0:
	.4byte 0x00000FFF
_081281F4:
	.4byte 0xFFFFF000
_081281F8:
	cmp r3, #5
	bne _08128274
	and r1, r1, r5
	lsl r1, r1, #2
	ldr r2, _08128260  @ =gUnknown_03002230
	ldr r3, _08128264  @ =0x00001AF6
	add r0, r2, r3
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r4, _08128268  @ =gUnknown_02003080
	add r0, r0, r4
	add r2, r1, r0
	mov r3, #20
	mov r5, #12
	mov r8, r5
	mov r5, #0
	ldr r0, _0812826C  @ =gUnknown_08180C50
	ldr r6, [r0, #20]
	ldr r0, _08128270  @ =gUnknown_08180C30
	ldr r4, [r0, #20]
	mov r7, #152
	lsl r7, r7, #2
	mov r9, r7
_08128228:
	ldr r1, [r2]
	and r1, r1, r6
	mov r7, r12
	ldr r0, [r7]
	lsl r0, r0, r3
	and r0, r0, r4
	orr r1, r1, r0
	str r1, [r2]
	ldr r1, [r7]
	mov r0, r8
	lsr r1, r1, r0
	ldr r0, [r7, #32]
	lsl r0, r0, r3
	orr r1, r1, r0
	str r1, [r2, #32]
	cmp r5, #7
	bne _08128252
	add r2, r2, r9
	mov r1, #240
	lsl r1, r1, #1
	add r12, r12, r1
_08128252:
	add r5, r5, #1
	mov r7, #4
	add r12, r12, r7
	add r2, r2, #4
	cmp r5, #15
	ble _08128228
	b _081283B0
_08128260:
	.4byte gUnknown_03002230
_08128264:
	.4byte 0x00001AF6
_08128268:
	.4byte gUnknown_02003080
_0812826C:
	.4byte gUnknown_08180C50
_08128270:
	.4byte gUnknown_08180C30
_08128274:
	cmp r3, #4
	bhi _0812831C
	and r1, r1, r5
	lsl r1, r1, #2
	ldr r2, _08128308  @ =gUnknown_03002230
	ldr r4, _0812830C  @ =0x00001AF6
	add r0, r2, r4
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r5, _08128310  @ =gUnknown_02003080
	add r0, r0, r5
	add r4, r1, r0
	lsl r6, r3, #2
	mov r0, #8
	sub r0, r0, r3
	lsl r0, r0, #26
	lsr r0, r0, #24
	mov r10, r0
	add r2, r3, #3
	mov r5, #0
	add r1, r6, #0
	ldr r3, _08128314  @ =gUnknown_08180C50
	add r0, r1, r3
	ldr r0, [r0]
	mov r9, r0
	ldr r0, _08128318  @ =gUnknown_08180C30
	add r1, r1, r0
	ldr r1, [r1]
	mov r8, r1
	lsl r2, r2, #2
	add r0, r2, r0
	ldr r0, [r0]
	str r0, [sp]
	add r2, r2, r3
	ldr r3, [r2]
_081282BC:
	ldr r1, [r4]
	mov r7, r9
	and r1, r1, r7
	mov r2, r12
	ldr r0, [r2]
	lsl r0, r0, r6
	mov r7, r8
	and r0, r0, r7
	orr r1, r1, r0
	str r1, [r4]
	ldr r2, [r4, #32]
	ldr r0, [sp]
	and r2, r2, r0
	mov r7, r12
	ldr r1, [r7]
	mov r0, r10
	lsr r1, r1, r0
	ldr r0, [r7, #32]
	lsl r0, r0, r6
	orr r1, r1, r0
	and r1, r1, r3
	orr r2, r2, r1
	str r2, [r4, #32]
	cmp r5, #7
	bne _081282FA
	mov r1, #152
	lsl r1, r1, #2
	add r4, r4, r1
	mov r2, #240
	lsl r2, r2, #1
	add r12, r12, r2
_081282FA:
	add r5, r5, #1
	mov r7, #4
	add r12, r12, r7
	add r4, r4, #4
	cmp r5, #15
	ble _081282BC
	b _081283B0
_08128308:
	.4byte gUnknown_03002230
_0812830C:
	.4byte 0x00001AF6
_08128310:
	.4byte gUnknown_02003080
_08128314:
	.4byte gUnknown_08180C50
_08128318:
	.4byte gUnknown_08180C30
_0812831C:
	and r1, r1, r5
	lsl r1, r1, #2
	ldr r2, _081283CC  @ =gUnknown_03002230
	ldr r4, _081283D0  @ =0x00001AF6
	add r0, r2, r4
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #2
	ldr r5, _081283D4  @ =gUnknown_02003080
	add r0, r0, r5
	add r4, r1, r0
	lsl r7, r3, #2
	mov r0, #8
	sub r0, r0, r3
	lsl r0, r0, #26
	lsr r6, r0, #24
	sub r2, r3, #5
	lsl r2, r2, #24
	mov r5, #0
	add r1, r7, #0
	ldr r3, _081283D8  @ =gUnknown_08180C50
	add r0, r1, r3
	ldr r0, [r0]
	mov r10, r0
	ldr r0, _081283DC  @ =gUnknown_08180C30
	add r1, r1, r0
	ldr r1, [r1]
	mov r9, r1
	lsr r2, r2, #22
	add r0, r2, r0
	ldr r0, [r0]
	mov r8, r0
	add r2, r2, r3
	ldr r2, [r2]
_08128360:
	ldr r1, [r4]
	mov r0, r10
	and r1, r1, r0
	mov r3, r12
	ldr r0, [r3]
	lsl r0, r0, r7
	mov r3, r9
	and r0, r0, r3
	orr r1, r1, r0
	str r1, [r4]
	mov r0, r12
	ldr r1, [r0]
	lsr r1, r1, r6
	ldr r0, [r0, #32]
	lsl r0, r0, r7
	orr r1, r1, r0
	str r1, [r4, #32]
	ldr r1, [r4, #64]
	mov r3, r8
	and r1, r1, r3
	mov r3, r12
	ldr r0, [r3, #32]
	lsr r0, r0, r6
	and r0, r0, r2
	orr r1, r1, r0
	str r1, [r4, #64]
	cmp r5, #7
	bne _081283A4
	mov r0, #152
	lsl r0, r0, #2
	add r4, r4, r0
	mov r1, #240
	lsl r1, r1, #1
	add r12, r12, r1
_081283A4:
	add r5, r5, #1
	mov r3, #4
	add r12, r12, r3
	add r4, r4, #4
	cmp r5, #15
	ble _08128360
_081283B0:
	ldr r4, _081283CC  @ =gUnknown_03002230
	ldr r5, _081283E0  @ =0x00001AD2
	add r1, r4, r5
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_081283CC:
	.4byte gUnknown_03002230
_081283D0:
	.4byte 0x00001AF6
_081283D4:
	.4byte gUnknown_02003080
_081283D8:
	.4byte gUnknown_08180C50
_081283DC:
	.4byte gUnknown_08180C30
_081283E0:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_081280C0

	THUMB_FUNC_START sub_081283E4
sub_081283E4: @ 0x081283E4
	push {r4,r5,lr}
	mov r4, #0
	ldr r2, _0812840C  @ =gUnknown_03002230
	ldr r1, _08128410  @ =0x00000546
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #193
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08128418
	ldr r5, _08128414  @ =0x00001AE3
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128418
	bl sub_08129D90
	b _0812848C
	.byte 0x00
	.byte 0x00
_0812840C:
	.4byte gUnknown_03002230
_08128410:
	.4byte 0x00000546
_08128414:
	.4byte 0x00001AE3
_08128418:
	ldr r1, _08128440  @ =0x00001B04
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812844C
	ldr r5, _08128444  @ =0x00000547
	add r0, r2, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0812844C
	ldr r1, _08128448  @ =0x00001AE3
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0812844C
	bl sub_08129DC0
	b _0812848C
_08128440:
	.4byte 0x00001B04
_08128444:
	.4byte 0x00000547
_08128448:
	.4byte 0x00001AE3
_0812844C:
	add r3, r2, #0
	ldr r5, _0812846C  @ =0x00000547
	add r0, r3, r5
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08128474
	ldr r0, _08128470  @ =0x00001AE2
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0812848C
	mov r0, #0
	strb r0, [r1]
	b _08128490
_0812846C:
	.4byte 0x00000547
_08128470:
	.4byte 0x00001AE2
_08128474:
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0812848C
	ldr r1, _08128508  @ =0x00001AE2
	add r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #1
	beq _0812848C
	mov r0, #1
	strb r0, [r2]
	mov r4, #1
_0812848C:
	cmp r4, #0
	beq _081284FA
_08128490:
	mov r0, #69
	mov r1, #0
	bl sub_0812A324
	ldr r4, _0812850C  @ =gUnknown_03002230
	ldr r3, _08128510  @ =gUnknown_08180C70
	ldr r5, _08128508  @ =0x00001AE2
	add r2, r4, r5
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r1, [r0]
	add r5, r5, #6
	add r0, r4, r5
	mov r5, #0
	strb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsr r0, r0, #8
	ldr r2, _08128514  @ =0x00001AE9
	add r1, r4, r2
	strb r0, [r1]
	bl sub_0812740C
	mov r1, #215
	lsl r1, r1, #5
	add r0, r4, r1
	strh r5, [r0]
	ldr r2, _08128518  @ =0x00001AD2
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #18
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #30
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #2
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #6
	add r4, r4, r2
	strh r5, [r4]
	mov r2, #0
	mov r1, #207
	ldr r0, _0812851C  @ =gUnknown_0201053F
_081284F0:
	strb r2, [r0]
	sub r0, r0, #1
	sub r1, r1, #1
	cmp r1, #0
	bge _081284F0
_081284FA:
	bl sub_08129578
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08128508:
	.4byte 0x00001AE2
_0812850C:
	.4byte gUnknown_03002230
_08128510:
	.4byte gUnknown_08180C70
_08128514:
	.4byte 0x00001AE9
_08128518:
	.4byte 0x00001AD2
_0812851C:
	.4byte gUnknown_0201053F
	THUMB_FUNC_END sub_081283E4

	THUMB_FUNC_START sub_08128520
sub_08128520: @ 0x08128520
	push {lr}
	ldr r2, _08128544  @ =gUnknown_03002230
	ldr r1, _08128548  @ =0x00000547
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08128550
	ldr r1, _0812854C  @ =0x00001AE3
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128550
	bl sub_08129D90
	b _081285A6
	.byte 0x00
	.byte 0x00
_08128544:
	.4byte gUnknown_03002230
_08128548:
	.4byte 0x00000547
_0812854C:
	.4byte 0x00001AE3
_08128550:
	ldr r1, _08128574  @ =gUnknown_03002230
	ldr r2, _08128578  @ =0x00000547
	add r0, r1, r2
	ldrb r2, [r0]
	mov r0, #5
	and r0, r0, r2
	cmp r0, #0
	bne _08128594
	mov r0, #10
	and r0, r0, r2
	cmp r0, #0
	bne _0812857C
	bl sub_08128634
	bl sub_08129258
	b _081285A6
	.byte 0x00
	.byte 0x00
_08128574:
	.4byte gUnknown_03002230
_08128578:
	.4byte 0x00000547
_0812857C:
	ldr r0, _08128590  @ =0x00001AE2
	add r1, r1, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	bl sub_081285D4
	bl sub_08129258
	b _081285A6
_08128590:
	.4byte 0x00001AE2
_08128594:
	ldr r2, _081285C8  @ =0x00001AE2
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_08128634
	bl sub_08129258
_081285A6:
	ldr r0, _081285CC  @ =gUnknown_03002230
	ldr r2, _081285D0  @ =0x00001AE3
	add r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _081285C0
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _081285C0
	bl sub_08128634
_081285C0:
	mov r0, #0
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_081285C8:
	.4byte 0x00001AE2
_081285CC:
	.4byte gUnknown_03002230
_081285D0:
	.4byte 0x00001AE3
	THUMB_FUNC_END sub_08128520

	THUMB_FUNC_START sub_081285D4
sub_081285D4: @ 0x081285D4
	push {r4-r6,lr}
	ldr r4, _08128610  @ =gUnknown_03003D12
	mov r6, #128
_081285DA:
	ldrb r1, [r4]
	mov r5, #0
	add r0, r1, #0
	and r0, r0, r6
	cmp r0, #0
	beq _081285EA
	mov r1, #31
	strb r1, [r4]
_081285EA:
	ldr r2, _08128614  @ =gUnknown_02002320
	add r0, r1, r2
	ldrb r2, [r0]
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	bne _081285FC
	cmp r2, #0
	bne _08128624
_081285FC:
	cmp r1, #32
	bne _0812861C
	ldr r0, _08128618  @ =gUnknown_02002341
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812861C
	mov r0, #32
	bl sub_08128694
	b _0812862A
_08128610:
	.4byte gUnknown_03003D12
_08128614:
	.4byte gUnknown_02002320
_08128618:
	.4byte gUnknown_02002341
_0812861C:
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _081285DA
_08128624:
	add r0, r1, #0
	bl sub_08128694
_0812862A:
	cmp r5, #0
	bne _081285DA
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_081285D4

	THUMB_FUNC_START sub_08128634
sub_08128634: @ 0x08128634
	push {r4,r5,lr}
	ldr r4, _08128660  @ =gUnknown_03003D12
_08128638:
	mov r5, #0
	ldrb r0, [r4]
	cmp r0, #31
	bls _08128642
	strb r5, [r4]
_08128642:
	ldrb r1, [r4]
	ldr r2, _08128664  @ =gUnknown_02002320
	add r0, r1, r2
	ldrb r2, [r0]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	bne _08128656
	cmp r2, #0
	bne _08128682
_08128656:
	cmp r1, #32
	beq _08128668
	add r0, r1, #1
	strb r0, [r4]
	b _08128638
_08128660:
	.4byte gUnknown_03003D12
_08128664:
	.4byte gUnknown_02002320
_08128668:
	ldr r0, _08128678  @ =gUnknown_02002341
	ldrb r0, [r0]
	cmp r0, #0
	beq _0812867C
	mov r0, #32
	bl sub_08128694
	b _08128688
_08128678:
	.4byte gUnknown_02002341
_0812867C:
	mov r0, #33
	strb r0, [r4]
	b _08128638
_08128682:
	add r0, r1, #0
	bl sub_08128694
_08128688:
	cmp r5, #0
	bne _08128638
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08128634

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08128694
sub_08128694: @ 0x08128694
	push {r4,lr}
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _081286F4  @ =gUnknown_0816B5A8
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r4, [r0]
	ldr r1, _081286F8  @ =gUnknown_02002320
	add r0, r2, r1
	ldrb r3, [r0]
	cmp r2, #32
	beq _081286B0
	cmp r2, #3
	bne _081286B2
_081286B0:
	mov r3, #1
_081286B2:
	lsl r2, r3, #27
	lsr r3, r2, #24
	ldr r0, _081286FC  @ =gUnknown_03002230
	ldr r1, _08128700  @ =0x0000098E
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08128708
	ldr r1, _08128704  @ =gUnknown_020101E0
	add r0, r3, #0
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #2
	orr r0, r0, r3
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #38
	mov r0, #4
	orr r0, r0, r3
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #6
	orr r3, r3, r0
	add r0, r3, r4
	b _08128738
	.byte 0x00
	.byte 0x00
_081286F4:
	.4byte gUnknown_0816B5A8
_081286F8:
	.4byte gUnknown_02002320
_081286FC:
	.4byte gUnknown_03002230
_08128700:
	.4byte 0x0000098E
_08128704:
	.4byte gUnknown_020101E0
_08128708:
	ldr r1, _08128744  @ =gUnknown_02010232
	lsr r0, r2, #24
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	add r0, r3, #2
	asr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #40
	add r0, r3, #4
	asr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	add r0, r3, #6
	asr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r4
_08128738:
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08128744:
	.4byte gUnknown_02010232
	THUMB_FUNC_END sub_08128694

	THUMB_FUNC_START sub_08128748
sub_08128748: @ 0x08128748
	push {r4,lr}
	ldr r2, _08128770  @ =gUnknown_03002230
	ldr r0, _08128774  @ =0x00001AD2
	add r3, r2, r0
	ldrh r1, [r3]
	add r1, r1, #1
	strh r1, [r3]
	ldrh r0, [r3]
	ldr r4, _08128778  @ =gUnknown_02005480
	add r0, r0, r4
	ldrb r0, [r0]
	ldr r4, _0812877C  @ =0x00001AE4
	add r2, r2, r4
	strb r0, [r2]
	add r1, r1, #1
	strh r1, [r3]
	mov r0, #0
	pop {r4}
	pop {r1}
	bx r1
_08128770:
	.4byte gUnknown_03002230
_08128774:
	.4byte 0x00001AD2
_08128778:
	.4byte gUnknown_02005480
_0812877C:
	.4byte 0x00001AE4
	THUMB_FUNC_END sub_08128748

	THUMB_FUNC_START sub_08128780
sub_08128780: @ 0x08128780
	push {r4,r5,lr}
	mov r4, #0
	ldr r2, _081287A8  @ =gUnknown_03002230
	ldr r1, _081287AC  @ =0x00000546
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #193
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _081287B4
	ldr r5, _081287B0  @ =0x00001AE3
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _081287B4
	bl sub_08129D90
	b _08128828
	.byte 0x00
	.byte 0x00
_081287A8:
	.4byte gUnknown_03002230
_081287AC:
	.4byte 0x00000546
_081287B0:
	.4byte 0x00001AE3
_081287B4:
	ldr r1, _081287DC  @ =0x00001B04
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081287E8
	ldr r5, _081287E0  @ =0x00000547
	add r0, r2, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _081287E8
	ldr r1, _081287E4  @ =0x00001AE3
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _081287E8
	bl sub_08129DC0
	b _08128828
_081287DC:
	.4byte 0x00001B04
_081287E0:
	.4byte 0x00000547
_081287E4:
	.4byte 0x00001AE3
_081287E8:
	add r3, r2, #0
	ldr r5, _08128808  @ =0x00000547
	add r0, r3, r5
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08128810
	ldr r0, _0812880C  @ =0x00001AE2
	add r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08128828
	mov r0, #0
	strb r0, [r1]
	b _0812882C
_08128808:
	.4byte 0x00000547
_0812880C:
	.4byte 0x00001AE2
_08128810:
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08128828
	ldr r1, _081288A4  @ =0x00001AE2
	add r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #1
	beq _08128828
	mov r0, #1
	strb r0, [r2]
	mov r4, #1
_08128828:
	cmp r4, #0
	beq _08128896
_0812882C:
	mov r0, #69
	mov r1, #0
	bl sub_0812A324
	ldr r4, _081288A8  @ =gUnknown_03002230
	ldr r3, _081288AC  @ =gUnknown_08180C74
	ldr r5, _081288A4  @ =0x00001AE2
	add r2, r4, r5
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r1, [r0]
	add r5, r5, #6
	add r0, r4, r5
	mov r5, #0
	strb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsr r0, r0, #8
	ldr r2, _081288B0  @ =0x00001AE9
	add r1, r4, r2
	strb r0, [r1]
	bl sub_0812740C
	mov r1, #215
	lsl r1, r1, #5
	add r0, r4, r1
	strh r5, [r0]
	ldr r2, _081288B4  @ =0x00001AD2
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #18
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #30
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #2
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #6
	add r4, r4, r2
	strh r5, [r4]
	mov r2, #0
	mov r1, #207
	ldr r0, _081288B8  @ =gUnknown_0201053F
_0812888C:
	strb r2, [r0]
	sub r0, r0, #1
	sub r1, r1, #1
	cmp r1, #0
	bge _0812888C
_08128896:
	bl sub_08129578
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_081288A4:
	.4byte 0x00001AE2
_081288A8:
	.4byte gUnknown_03002230
_081288AC:
	.4byte gUnknown_08180C74
_081288B0:
	.4byte 0x00001AE9
_081288B4:
	.4byte 0x00001AD2
_081288B8:
	.4byte gUnknown_0201053F
	THUMB_FUNC_END sub_08128780

	THUMB_FUNC_START sub_081288BC
sub_081288BC: @ 0x081288BC
	push {r4,r5,lr}
	ldr r2, _081288F0  @ =gUnknown_03002230
	ldr r0, _081288F4  @ =0x00000546
	add r1, r2, r0
	ldrb r0, [r1]
	mov r3, #192
	and r3, r3, r0
	ldr r4, _081288F8  @ =0x00000547
	add r0, r2, r4
	ldrb r0, [r0]
	orr r3, r3, r0
	mov r4, #0
	ldrh r1, [r1]
	mov r0, #193
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08128900
	ldr r5, _081288FC  @ =0x00001AE3
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128900
	bl sub_08129D90
	b _0812897A
_081288F0:
	.4byte gUnknown_03002230
_081288F4:
	.4byte 0x00000546
_081288F8:
	.4byte 0x00000547
_081288FC:
	.4byte 0x00001AE3
_08128900:
	ldr r1, _08128928  @ =0x00001B04
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08128934
	ldr r5, _0812892C  @ =0x00000547
	add r0, r2, r5
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08128934
	ldr r1, _08128930  @ =0x00001AE3
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128934
	bl sub_08129DC0
	b _0812897A
_08128928:
	.4byte 0x00001B04
_0812892C:
	.4byte 0x00000547
_08128930:
	.4byte 0x00001AE3
_08128934:
	mov r0, #8
	and r0, r0, r3
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _0812895C
	ldr r4, _08128958  @ =0x00001AE2
	add r2, r2, r4
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _0812897E
	mov r0, #2
	strb r0, [r2]
	b _0812897E
_08128958:
	.4byte 0x00001AE2
_0812895C:
	mov r0, #4
	and r3, r3, r0
	cmp r3, #0
	beq _0812897A
	ldr r5, _081289F4  @ =0x00001AE2
	add r2, r2, r5
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bne _08128978
	strb r1, [r2]
_08128978:
	mov r4, #1
_0812897A:
	cmp r4, #0
	beq _081289E8
_0812897E:
	mov r0, #69
	mov r1, #0
	bl sub_0812A324
	ldr r4, _081289F8  @ =gUnknown_03002230
	ldr r3, _081289FC  @ =gUnknown_08180C78
	ldr r0, _081289F4  @ =0x00001AE2
	add r2, r4, r0
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r1, [r0]
	ldr r5, _08128A00  @ =0x00001AE8
	add r0, r4, r5
	mov r5, #0
	strb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsr r0, r0, #8
	ldr r2, _08128A04  @ =0x00001AE9
	add r1, r4, r2
	strb r0, [r1]
	bl sub_0812740C
	mov r1, #215
	lsl r1, r1, #5
	add r0, r4, r1
	strh r5, [r0]
	ldr r2, _08128A08  @ =0x00001AD2
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #18
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #30
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #2
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #6
	add r4, r4, r2
	strh r5, [r4]
	mov r2, #0
	mov r1, #207
	ldr r0, _08128A0C  @ =gUnknown_0201053F
_081289DE:
	strb r2, [r0]
	sub r0, r0, #1
	sub r1, r1, #1
	cmp r1, #0
	bge _081289DE
_081289E8:
	bl sub_08129578
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_081289F4:
	.4byte 0x00001AE2
_081289F8:
	.4byte gUnknown_03002230
_081289FC:
	.4byte gUnknown_08180C78
_08128A00:
	.4byte 0x00001AE8
_08128A04:
	.4byte 0x00001AE9
_08128A08:
	.4byte 0x00001AD2
_08128A0C:
	.4byte gUnknown_0201053F
	THUMB_FUNC_END sub_081288BC

	THUMB_FUNC_START sub_08128A10
sub_08128A10: @ 0x08128A10
	push {r4,r5,lr}
	mov r4, #0
	ldr r2, _08128A44  @ =gUnknown_03002230
	ldr r0, _08128A48  @ =0x00000546
	add r1, r2, r0
	ldrb r0, [r1]
	mov r3, #192
	and r3, r3, r0
	ldr r5, _08128A4C  @ =0x00000547
	add r0, r2, r5
	ldrb r0, [r0]
	orr r3, r3, r0
	ldrh r1, [r1]
	mov r0, #193
	lsl r0, r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08128A54
	ldr r1, _08128A50  @ =0x00001AE3
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128A54
	bl sub_08129D90
	b _08128AB8
_08128A44:
	.4byte gUnknown_03002230
_08128A48:
	.4byte 0x00000546
_08128A4C:
	.4byte 0x00000547
_08128A50:
	.4byte 0x00001AE3
_08128A54:
	ldr r5, _08128A7C  @ =0x00001B04
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08128A84
	ldr r1, _08128A80  @ =0x00000547
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08128A84
	sub r5, r5, #33
	add r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128A84
	bl sub_08129DC0
	b _08128AB8
_08128A7C:
	.4byte 0x00001B04
_08128A80:
	.4byte 0x00000547
_08128A84:
	mov r0, #8
	and r0, r0, r3
	cmp r0, #0
	beq _08128AA0
	ldr r0, _08128A9C  @ =0x00001AE2
	add r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08128AB8
	mov r0, #0
	strb r0, [r2]
	b _08128ABC
_08128A9C:
	.4byte 0x00001AE2
_08128AA0:
	mov r0, #4
	and r3, r3, r0
	cmp r3, #0
	beq _08128AB8
	ldr r1, _08128B34  @ =0x00001AE2
	add r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #1
	beq _08128AB8
	mov r0, #1
	strb r0, [r2]
	mov r4, #1
_08128AB8:
	cmp r4, #0
	beq _08128B26
_08128ABC:
	mov r0, #69
	mov r1, #0
	bl sub_0812A324
	ldr r4, _08128B38  @ =gUnknown_03002230
	ldr r3, _08128B3C  @ =gUnknown_08180C7E
	ldr r5, _08128B34  @ =0x00001AE2
	add r2, r4, r5
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r1, [r0]
	add r5, r5, #6
	add r0, r4, r5
	mov r5, #0
	strb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsr r0, r0, #8
	ldr r2, _08128B40  @ =0x00001AE9
	add r1, r4, r2
	strb r0, [r1]
	bl sub_0812740C
	mov r1, #215
	lsl r1, r1, #5
	add r0, r4, r1
	strh r5, [r0]
	ldr r2, _08128B44  @ =0x00001AD2
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #18
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #30
	add r0, r4, r2
	strh r5, [r0]
	add r1, r1, #2
	add r0, r4, r1
	strh r5, [r0]
	add r2, r2, #6
	add r4, r4, r2
	strh r5, [r4]
	mov r2, #0
	mov r1, #207
	ldr r0, _08128B48  @ =gUnknown_0201053F
_08128B1C:
	strb r2, [r0]
	sub r0, r0, #1
	sub r1, r1, #1
	cmp r1, #0
	bge _08128B1C
_08128B26:
	bl sub_08129578
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08128B34:
	.4byte 0x00001AE2
_08128B38:
	.4byte gUnknown_03002230
_08128B3C:
	.4byte gUnknown_08180C7E
_08128B40:
	.4byte 0x00001AE9
_08128B44:
	.4byte 0x00001AD2
_08128B48:
	.4byte gUnknown_0201053F
	THUMB_FUNC_END sub_08128A10

	THUMB_FUNC_START sub_08128B4C
sub_08128B4C: @ 0x08128B4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _08128B74  @ =gUnknown_03002230
	ldr r1, _08128B78  @ =0x00000544
	add r0, r2, r1
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	bne _08128B84
	ldr r2, _08128B7C  @ =0x00001AE4
	add r0, r5, r2
	ldrb r1, [r0]
	ldr r3, _08128B80  @ =0x00000964
	add r0, r5, r3
	b _08128B8E
_08128B74:
	.4byte gUnknown_03002230
_08128B78:
	.4byte 0x00000544
_08128B7C:
	.4byte 0x00001AE4
_08128B80:
	.4byte 0x00000964
_08128B84:
	ldr r1, _08128CA8  @ =0x00001AE4
	add r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08128CAC  @ =0x00000964
	add r0, r5, r2
_08128B8E:
	strh r1, [r0]
	ldr r3, _08128CB0  @ =0x0000098E
	add r0, r5, r3
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08128BA0
	b _08128CF4
_08128BA0:
	ldr r0, _08128CAC  @ =0x00000964
	add r1, r5, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08128BAE
	b _08128E02
_08128BAE:
	ldr r3, _08128CB4  @ =0x00000EFF
	mov r8, r3
	mov r4, #0
	ldr r0, _08128CB8  @ =0x00001AD8
	add r0, r0, r5
	mov r12, r0
	add r6, r1, #0
	ldr r1, _08128CBC  @ =0x00001AD2
	add r7, r5, r1
	ldr r2, _08128CC0  @ =0x00001AD6
	add r2, r2, r5
	mov r9, r2
_08128BC6:
	mov r3, #0
_08128BC8:
	ldr r0, _08128CC4  @ =gUnknown_02003080
	add r2, r3, r0
	add r0, r0, #4
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128CC8  @ =gUnknown_02003088
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128CCC  @ =gUnknown_0200308C
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128CD0  @ =gUnknown_02003090
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128CD4  @ =gUnknown_02003094
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128CD8  @ =gUnknown_02003098
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128CDC  @ =gUnknown_0200309C
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r2, _08128CE0  @ =gUnknown_02003300
	add r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	add r3, r3, #32
	cmp r3, r8
	ble _08128BC8
	ldr r0, _08128CE4  @ =gUnknown_02003F7C
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	mov r3, r12
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r2, #15
	and r2, r2, r0
	cmp r2, #0
	bne _08128C9A
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #128
	mov r1, r9
	strh r0, [r1]
	ldr r0, _08128CE8  @ =gUnknown_08180C82
	ldrh r1, [r0, #4]
	ldr r3, _08128CEC  @ =0x00001AF2
	add r0, r5, r3
	strh r1, [r0]
	ldr r0, _08128CF0  @ =0x00001AF0
	add r1, r5, r0
	mov r0, #1
	strh r0, [r1]
	mov r1, #215
	lsl r1, r1, #5
	add r0, r5, r1
	strh r2, [r0]
	strh r2, [r6]
_08128C9A:
	ldrh r0, [r6]
	sub r0, r0, #1
	strh r0, [r6]
	lsl r0, r0, #16
	cmp r0, #0
	bge _08128BC6
	b _08128E02
_08128CA8:
	.4byte 0x00001AE4
_08128CAC:
	.4byte 0x00000964
_08128CB0:
	.4byte 0x0000098E
_08128CB4:
	.4byte 0x00000EFF
_08128CB8:
	.4byte 0x00001AD8
_08128CBC:
	.4byte 0x00001AD2
_08128CC0:
	.4byte 0x00001AD6
_08128CC4:
	.4byte gUnknown_02003080
_08128CC8:
	.4byte gUnknown_02003088
_08128CCC:
	.4byte gUnknown_0200308C
_08128CD0:
	.4byte gUnknown_02003090
_08128CD4:
	.4byte gUnknown_02003094
_08128CD8:
	.4byte gUnknown_02003098
_08128CDC:
	.4byte gUnknown_0200309C
_08128CE0:
	.4byte gUnknown_02003300
_08128CE4:
	.4byte gUnknown_02003F7C
_08128CE8:
	.4byte gUnknown_08180C82
_08128CEC:
	.4byte 0x00001AF2
_08128CF0:
	.4byte 0x00001AF0
_08128CF4:
	ldr r2, _08128E14  @ =0x00000964
	add r1, r5, r2
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08128D02
	b _08128E02
_08128D02:
	ldr r0, _08128E18  @ =0x00000FBF
	mov r8, r0
	mov r4, #0
	ldr r2, _08128E1C  @ =0x00001AD8
	add r2, r2, r5
	mov r12, r2
	add r6, r1, #0
	ldr r3, _08128E20  @ =gUnknown_08180C82
	mov r10, r3
	ldr r0, _08128E24  @ =0x00001AD2
	add r7, r5, r0
	ldr r1, _08128E28  @ =0x00001AD6
	add r1, r1, r5
	mov r9, r1
_08128D1E:
	mov r3, #0
_08128D20:
	ldr r0, _08128E2C  @ =gUnknown_02003080
	add r2, r3, r0
	add r0, r0, #4
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128E30  @ =gUnknown_02003088
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128E34  @ =gUnknown_0200308C
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128E38  @ =gUnknown_02003090
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128E3C  @ =gUnknown_02003094
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08128E40  @ =gUnknown_02003098
	add r2, r3, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _08128E44  @ =gUnknown_0200309C
	add r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r2, _08128E48  @ =gUnknown_02003320
	add r0, r3, r2
	ldr r0, [r0]
	str r0, [r1]
	add r3, r3, #32
	cmp r3, r8
	ble _08128D20
	ldr r0, _08128E4C  @ =gUnknown_0200403C
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	sub r0, r0, #32
	str r4, [r0]
	mov r3, r12
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r2, #15
	and r2, r2, r0
	cmp r2, #0
	bne _08128DF6
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #128
	mov r1, r9
	strh r0, [r1]
	mov r3, r10
	ldrh r1, [r3, #4]
	ldr r3, _08128E50  @ =0x00001AF2
	add r0, r5, r3
	strh r1, [r0]
	ldr r0, _08128E54  @ =0x00001AF0
	add r1, r5, r0
	mov r0, #1
	strh r0, [r1]
	mov r1, #215
	lsl r1, r1, #5
	add r0, r5, r1
	strh r2, [r0]
	strh r2, [r6]
_08128DF6:
	ldrh r0, [r6]
	sub r0, r0, #1
	strh r0, [r6]
	lsl r0, r0, #16
	cmp r0, #0
	bge _08128D1E
_08128E02:
	mov r0, #0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08128E14:
	.4byte 0x00000964
_08128E18:
	.4byte 0x00000FBF
_08128E1C:
	.4byte 0x00001AD8
_08128E20:
	.4byte gUnknown_08180C82
_08128E24:
	.4byte 0x00001AD2
_08128E28:
	.4byte 0x00001AD6
_08128E2C:
	.4byte gUnknown_02003080
_08128E30:
	.4byte gUnknown_02003088
_08128E34:
	.4byte gUnknown_0200308C
_08128E38:
	.4byte gUnknown_02003090
_08128E3C:
	.4byte gUnknown_02003094
_08128E40:
	.4byte gUnknown_02003098
_08128E44:
	.4byte gUnknown_0200309C
_08128E48:
	.4byte gUnknown_02003320
_08128E4C:
	.4byte gUnknown_0200403C
_08128E50:
	.4byte 0x00001AF2
_08128E54:
	.4byte 0x00001AF0
	THUMB_FUNC_END sub_08128B4C

	THUMB_FUNC_START sub_08128E58
sub_08128E58: @ 0x08128E58
	push {r4,lr}
	ldr r0, _08128E80  @ =gUnknown_03002230
	ldr r2, _08128E84  @ =0x0000098E
	add r1, r0, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r4, r0, #0
	cmp r1, #0
	bne _08128E90
	ldr r3, _08128E88  @ =0x00001AD2
	add r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08128E8C  @ =gUnknown_02005480
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r0, #0
	sub r1, r1, #116
	b _08128EA0
	.byte 0x00
	.byte 0x00
_08128E80:
	.4byte gUnknown_03002230
_08128E84:
	.4byte 0x0000098E
_08128E88:
	.4byte 0x00001AD2
_08128E8C:
	.4byte gUnknown_02005480
_08128E90:
	ldr r2, _08128EE4  @ =0x00001AD2
	add r0, r4, r2
	ldrh r0, [r0]
	ldr r3, _08128EE8  @ =gUnknown_02005480
	add r0, r0, r3
	ldrb r0, [r0]
	add r1, r0, #0
	sub r1, r1, #13
_08128EA0:
	mov r0, #3
	and r1, r1, r0
	ldr r0, _08128EEC  @ =gUnknown_08180C88
	lsl r1, r1, #1
	add r0, r1, r0
	ldrh r2, [r0]
	ldr r3, _08128EF0  @ =0x00001AD6
	add r0, r4, r3
	mov r3, #0
	strh r2, [r0]
	ldr r0, _08128EF4  @ =gUnknown_08180C82
	add r1, r1, r0
	ldrh r1, [r1]
	ldr r2, _08128EF8  @ =0x00001AF2
	add r0, r4, r2
	strh r1, [r0]
	ldr r0, _08128EFC  @ =0x00001AF0
	add r1, r4, r0
	mov r0, #1
	strh r0, [r1]
	sub r2, r2, #32
	add r1, r4, r2
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r1, #215
	lsl r1, r1, #5
	add r0, r4, r1
	strh r3, [r0]
	mov r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08128EE4:
	.4byte 0x00001AD2
_08128EE8:
	.4byte gUnknown_02005480
_08128EEC:
	.4byte gUnknown_08180C88
_08128EF0:
	.4byte 0x00001AD6
_08128EF4:
	.4byte gUnknown_08180C82
_08128EF8:
	.4byte 0x00001AF2
_08128EFC:
	.4byte 0x00001AF0
	THUMB_FUNC_END sub_08128E58

	THUMB_FUNC_START sub_08128F00
sub_08128F00: @ 0x08128F00
	push {r4,r5,lr}
	ldr r5, _08128F54  @ =gUnknown_03002230
	ldr r0, _08128F58  @ =0x00001AD5
	add r3, r5, r0
	ldrb r0, [r3]
	mov r2, #12
	and r2, r2, r0
	strb r2, [r3]
	ldr r1, _08128F5C  @ =0x00001AD2
	add r4, r5, r1
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r1, _08128F60  @ =gUnknown_02005480
	add r0, r0, r1
	ldrb r0, [r0]
	mov r1, #15
	and r1, r1, r0
	cmp r1, #7
	beq _08128F46
	lsl r0, r1, #4
	orr r0, r0, r2
	strb r0, [r3]
	ldrb r0, [r3]
	lsl r0, r0, #8
	mov r2, #192
	lsl r2, r2, #1
	add r1, r2, #0
	orr r0, r0, r1
	ldr r2, _08128F64  @ =0x00001ADC
	add r1, r5, r2
	strh r0, [r1]
	bl sub_081291C8
_08128F46:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_08128F54:
	.4byte gUnknown_03002230
_08128F58:
	.4byte 0x00001AD5
_08128F5C:
	.4byte 0x00001AD2
_08128F60:
	.4byte gUnknown_02005480
_08128F64:
	.4byte 0x00001ADC
	THUMB_FUNC_END sub_08128F00

	THUMB_FUNC_START sub_08128F68
sub_08128F68: @ 0x08128F68
	push {lr}
	ldr r1, _08128F8C  @ =gUnknown_03002230
	ldr r0, _08128F90  @ =0x00001AD2
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r1, _08128F94  @ =gUnknown_02005480
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08128F98
	mov r0, #64
	mov r1, #0
	bl sub_0812A324
	b _08128FA0
_08128F8C:
	.4byte gUnknown_03002230
_08128F90:
	.4byte 0x00001AD2
_08128F94:
	.4byte gUnknown_02005480
_08128F98:
	mov r0, #71
	mov r1, #0
	bl sub_0812A324
_08128FA0:
	ldr r1, _08128FB4  @ =gUnknown_03002230
	ldr r0, _08128FB8  @ =0x00001AD2
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r0, #0
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08128FB4:
	.4byte gUnknown_03002230
_08128FB8:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_08128F68

	THUMB_FUNC_START sub_08128FBC
sub_08128FBC: @ 0x08128FBC
	push {r4,r5,lr}
	ldr r2, _08128FE8  @ =gUnknown_03002230
	ldr r0, _08128FEC  @ =0x00001B06
	add r3, r2, r0
	ldrb r5, [r3]
	sub r0, r0, #52
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r0, _08128FF0  @ =0x00001ACD
	add r4, r2, r0
	ldrb r0, [r4]
	strb r0, [r3]
	ldrh r0, [r1]
	ldr r1, _08128FF4  @ =gUnknown_02005480
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #255
	bne _08128FF8
	strb r5, [r4]
	b _08129020
_08128FE8:
	.4byte gUnknown_03002230
_08128FEC:
	.4byte 0x00001B06
_08128FF0:
	.4byte 0x00001ACD
_08128FF4:
	.4byte gUnknown_02005480
_08128FF8:
	strb r1, [r4]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0812900A
	cmp r0, #2
	beq _08129018
	b _08129020
_0812900A:
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _08129020
	mov r0, #4
	b _0812901E
_08129018:
	cmp r1, #0
	beq _08129020
	mov r0, #1
_0812901E:
	strb r0, [r4]
_08129020:
	ldr r3, _08129044  @ =0x00001ACD
	add r0, r2, r3
	ldrb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #55
	add r0, r2, r3
	strb r1, [r0]
	ldr r0, _08129048  @ =0x00001AD2
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r0, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_08129044:
	.4byte 0x00001ACD
_08129048:
	.4byte 0x00001AD2
	THUMB_FUNC_END sub_08128FBC

	THUMB_FUNC_START sub_0812904C
sub_0812904C: @ 0x0812904C
	push {lr}
	bl sub_08129578
	cmp r0, #0
	beq _08129096
	ldr r3, _0812909C  @ =gUnknown_03002230
	ldr r1, _081290A0  @ =0x00000547
	add r0, r3, r1
	ldrb r0, [r0]
	mov r1, #207
	and r1, r1, r0
	ldr r2, _081290A4  @ =0x00000546
	add r0, r3, r2
	ldrb r2, [r0]
	mov r0, #192
	and r0, r0, r2
	orr r1, r1, r0
	cmp r1, #0
	beq _08129096
	ldr r0, _081290A8  @ =0x00001AD2
	add r1, r3, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, _081290AC  @ =0x00001AE3
	add r1, r3, r2
	mov r0, #16
	strb r0, [r1]
	ldr r1, _081290B0  @ =0x00001B05
	add r0, r3, r1
	ldrb r1, [r0]
	sub r2, r2, #22
	add r0, r3, r2
	strb r1, [r0]
	add r2, r2, #1
	add r0, r3, r2
	strb r1, [r0]
_08129096:
	mov r0, #0
	pop {r1}
	bx r1
_0812909C:
	.4byte gUnknown_03002230
_081290A0:
	.4byte 0x00000547
_081290A4:
	.4byte 0x00000546
_081290A8:
	.4byte 0x00001AD2
_081290AC:
	.4byte 0x00001AE3
_081290B0:
	.4byte 0x00001B05
	THUMB_FUNC_END sub_0812904C

	THUMB_FUNC_START sub_081290B4
sub_081290B4: @ 0x081290B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	mov r12, r1
	ldrh r4, [r7]
	ldrh r5, [r1]
	lsr r0, r4, #1
	lsl r0, r0, #1
	ldr r1, _081290FC  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r3, _08129100  @ =gUnknown_03002230
	ldr r1, _08129104  @ =0x00001AC8
	add r2, r3, r1
	ldrh r1, [r2]
	strh r1, [r0]
	add r0, r4, #2
	lsl r1, r0, #16
	lsr r4, r1, #16
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldr r2, _08129108  @ =0x0000098E
	add r0, r3, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r8, r3
	cmp r0, #0
	bne _0812910C
	lsr r0, r1, #17
	lsl r0, r0, #1
	ldr r1, _081290FC  @ =gUnknown_02000402
	add r0, r0, r1
	mov r1, #23
	b _08129116
_081290FC:
	.4byte gUnknown_02000402
_08129100:
	.4byte gUnknown_03002230
_08129104:
	.4byte 0x00001AC8
_08129108:
	.4byte 0x0000098E
_0812910C:
	lsr r0, r1, #17
	lsl r0, r0, #1
	ldr r2, _08129174  @ =gUnknown_02000402
	add r0, r0, r2
	mov r1, #24
_08129116:
	strh r1, [r0]
	add r2, r4, #2
	lsl r2, r2, #16
	lsr r1, r2, #17
	lsl r1, r1, #1
	ldr r6, _08129174  @ =gUnknown_02000402
	add r1, r1, r6
	ldr r3, _08129178  @ =gUnknown_08180CBC
	lsr r0, r5, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #10
	add r2, r2, r0
	lsr r4, r2, #16
	add r0, r5, #2
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsr r0, r0, #17
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r2, [r0]
	ldr r0, _0812917C  @ =0x0000098E
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r8, r3
	cmp r0, #0
	bne _08129180
	mov r1, #21
	add r3, r5, #2
	add r5, r6, #0
_0812915C:
	lsr r0, r4, #1
	lsl r0, r0, #1
	add r0, r0, r5
	strh r2, [r0]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	sub r1, r1, #1
	cmp r1, #0
	bne _0812915C
	b _0812919A
	.byte 0x00
	.byte 0x00
_08129174:
	.4byte gUnknown_02000402
_08129178:
	.4byte gUnknown_08180CBC
_0812917C:
	.4byte 0x0000098E
_08129180:
	mov r1, #22
	add r3, r5, #2
	add r5, r6, #0
_08129186:
	lsr r0, r4, #1
	lsl r0, r0, #1
	add r0, r0, r5
	strh r2, [r0]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	sub r1, r1, #1
	cmp r1, #0
	bne _08129186
_0812919A:
	lsl r0, r3, #16
	lsr r5, r0, #16
	lsr r1, r4, #1
	lsl r1, r1, #1
	ldr r2, _081291C4  @ =gUnknown_02000402
	add r1, r1, r2
	lsr r0, r0, #17
	lsl r0, r0, #1
	add r0, r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, r4, #2
	strh r0, [r7]
	mov r0, r12
	strh r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_081291C4:
	.4byte gUnknown_02000402
	THUMB_FUNC_END sub_081290B4

	THUMB_FUNC_START sub_081291C8
sub_081291C8: @ 0x081291C8
	push {r4,lr}
	ldr r2, _08129210  @ =gUnknown_03002230
	ldr r1, _08129214  @ =0x0000098E
	add r0, r2, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08129224
	ldr r3, _08129218  @ =0x00001AD5
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	mov r3, #192
	lsl r3, r3, #1
	add r1, r3, #0
	ldr r3, _0812921C  @ =0x00001ADC
	add r2, r2, r3
	orr r0, r0, r1
	strh r0, [r2]
	mov r3, #0
	ldr r4, _08129220  @ =gUnknown_02010170
_081291F4:
	lsr r0, r3, #1
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	add r0, r3, #2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #239
	bls _081291F4
	b _08129246
_08129210:
	.4byte gUnknown_03002230
_08129214:
	.4byte 0x0000098E
_08129218:
	.4byte 0x00001AD5
_0812921C:
	.4byte 0x00001ADC
_08129220:
	.4byte gUnknown_02010170
_08129224:
	mov r3, #0
	ldr r4, _08129250  @ =gUnknown_02010170
	ldr r0, _08129254  @ =0x00001ADC
	add r2, r2, r0
_0812922C:
	lsr r0, r3, #1
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	add r0, r3, #2
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #251
	bls _0812922C
_08129246:
	bl sub_08129258
	pop {r4}
	pop {r0}
	bx r0
_08129250:
	.4byte gUnknown_02010170
_08129254:
	.4byte 0x00001ADC
	THUMB_FUNC_END sub_081291C8

	THUMB_FUNC_START sub_08129258
sub_08129258: @ 0x08129258
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r2, sp
	mov r4, sp
	add r4, r4, #2
	ldr r1, _081292F8  @ =gUnknown_03002230
	ldr r3, _081292FC  @ =0x00001ACA
	add r0, r1, r3
	ldrh r3, [r0]
	ldr r0, _08129300  @ =0x00001AC8
	add r6, r1, r0
	mov r0, #0
	strh r3, [r6]
	strh r0, [r2]
	strh r0, [r4]
	ldr r2, _08129304  @ =0x0000098E
	add r1, r1, r2
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r1, r4, #0
	cmp r0, #0
	bne _08129314
	add r0, r3, #0
	add r0, r0, #68
	strh r0, [r6]
	mov r5, #6
	mov r2, sp
	ldr r7, _08129308  @ =gUnknown_02000402
	mov r12, r6
	add r6, r1, #0
	ldr r3, _0812930C  @ =gUnknown_02010170
	mov r8, r3
_0812929C:
	ldrh r0, [r2]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r7
	mov r3, r12
	ldrh r1, [r3]
	strh r1, [r0]
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	ldr r1, _08129310  @ =0x0000FFFE
	and r0, r0, r1
	add r0, r0, r7
	mov r1, #20
	strh r1, [r0]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	mov r3, #20
	sub r4, r5, #1
_081292CA:
	ldrh r1, [r2]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r6]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r6]
	add r0, r0, #2
	strh r0, [r6]
	sub r3, r3, #1
	cmp r3, #0
	bne _081292CA
	add r5, r4, #0
	cmp r5, #0
	bne _0812929C
	b _08129382
_081292F8:
	.4byte gUnknown_03002230
_081292FC:
	.4byte 0x00001ACA
_08129300:
	.4byte 0x00001AC8
_08129304:
	.4byte 0x0000098E
_08129308:
	.4byte gUnknown_02000402
_0812930C:
	.4byte gUnknown_02010170
_08129310:
	.4byte 0x0000FFFE
_08129314:
	add r0, r3, #0
	add r0, r0, #66
	strh r0, [r6]
	mov r5, #6
	mov r2, sp
	ldr r7, _081293A0  @ =gUnknown_02000402
	mov r12, r6
	add r6, r4, #0
	ldr r0, _081293A4  @ =gUnknown_02010170
	mov r8, r0
_08129328:
	ldrh r0, [r2]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r7
	mov r3, r12
	ldrh r1, [r3]
	strh r1, [r0]
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	ldr r1, _081293A8  @ =0x0000FFFE
	and r0, r0, r1
	add r0, r0, r7
	mov r1, #21
	strh r1, [r0]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	mov r3, #21
	sub r4, r5, #1
_08129356:
	ldrh r1, [r2]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r7
	ldrh r0, [r6]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2]
	add r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r6]
	add r0, r0, #2
	strh r0, [r6]
	sub r3, r3, #1
	cmp r3, #0
	bne _08129356
	add r5, r4, #0
	cmp r5, #0
	bne _08129328
_08129382:
	mov r0, sp
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	ldr r1, _081293A0  @ =gUnknown_02000402
	add r0, r0, r1
	ldr r2, _081293AC  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_081293A0:
	.4byte gUnknown_02000402
_081293A4:
	.4byte gUnknown_02010170
_081293A8:
	.4byte 0x0000FFFE
_081293AC:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08129258

	.ALIGN 2, 0
