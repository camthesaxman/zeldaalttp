#include "global.h"

void sub_080CF6A8(u8 r0) {}

void sub_080CF6AC(u8 r0) {}

void sub_080CF6B0(u8 r0) {}

void sub_080CF6B4(u8 r0) {}

void sub_080CF6B8(u8 r0) {}

void sub_080CF6BC(u8 r0) {}


__attribute__((naked))
void sub_080CF6C0(u8 r0) {
    asm(" \n\
	push {r4-r6,lr} \n\
	lsl r0, r0, #24 \n\
	lsr r5, r0, #24 \n\
	mov r2, #29 \n\
	ldr r1, _080CF778  @ =gRam \n\
	ldr r3, _080CF77C  @ =0x000011EF \n\
	add r0, r1, r3 \n\
	ldrb r0, [r0] \n\
	add r4, r1, #0 \n\
	cmp r0, #0 \n\
	beq _080CF6F2 \n\
	ldr r6, _080CF780  @ =0x000011D2 \n\
	add r1, r4, r6 \n\
_080CF6DA: \n\
	lsl r0, r2, #24 \n\
	mov r2, #255 \n\
	lsl r2, r2, #24 \n\
	add r0, r0, r2 \n\
	lsr r2, r0, #24 \n\
	asr r0, r0, #24 \n\
	cmp r0, #0 \n\
	blt _080CF6F8 \n\
	add r0, r0, r1 \n\
	ldrb r0, [r0] \n\
	cmp r0, #0 \n\
	bne _080CF6DA \n\
_080CF6F2: \n\
	lsl r0, r2, #24 \n\
	cmp r0, #0 \n\
	bge _080CF6FA \n\
_080CF6F8: \n\
	mov r2, #0 \n\
_080CF6FA: \n\
	ldr r3, _080CF784  @ =0x00000ED2 \n\
	add r0, r4, r3 \n\
	add r0, r5, r0 \n\
	ldrb r3, [r0] \n\
	ldr r6, _080CF788  @ =0x00000EF2 \n\
	add r0, r4, r6 \n\
	add r0, r5, r0 \n\
	ldrb r0, [r0] \n\
	lsl r0, r0, #8 \n\
	add r3, r3, r0 \n\
	add r3, r3, #16 \n\
	lsl r2, r2, #24 \n\
	asr r2, r2, #24 \n\
	ldr r1, _080CF780  @ =0x000011D2 \n\
	add r0, r4, r1 \n\
	add r0, r2, r0 \n\
	mov r1, #10 \n\
	strb r1, [r0] \n\
	ldr r6, _080CF78C  @ =0x000015F8 \n\
	add r0, r4, r6 \n\
	strb r1, [r0] \n\
	ldr r0, _080CF790  @ =0x0000122C \n\
	add r1, r4, r0 \n\
	add r1, r2, r1 \n\
	ldr r6, _080CF794  @ =0x00000EE2 \n\
	add r0, r4, r6 \n\
	add r0, r5, r0 \n\
	ldrb r0, [r0] \n\
	strb r0, [r1] \n\
	ldr r0, _080CF798  @ =0x00001268 \n\
	add r1, r4, r0 \n\
	add r1, r2, r1 \n\
	add r6, r6, #32 \n\
	add r0, r4, r6 \n\
	add r0, r5, r0 \n\
	ldrb r0, [r0] \n\
	strb r0, [r1] \n\
	ldr r1, _080CF79C  @ =0x0000120E \n\
	add r0, r4, r1 \n\
	add r0, r2, r0 \n\
	strb r3, [r0] \n\
	ldr r6, _080CF7A0  @ =0x0000124A \n\
	add r0, r4, r6 \n\
	add r0, r2, r0 \n\
	lsr r3, r3, #8 \n\
	strb r3, [r0] \n\
	ldr r0, _080CF7A4  @ =0x0000131C \n\
	add r1, r4, r0 \n\
	add r1, r2, r1 \n\
	ldr r3, _080CF7A8  @ =0x000010F2 \n\
	add r0, r4, r3 \n\
	add r0, r5, r0 \n\
	ldrb r0, [r0] \n\
	strb r0, [r1] \n\
	add r6, r6, #180 \n\
	add r0, r4, r6 \n\
	add r2, r2, r0 \n\
	mov r0, #15 \n\
	strb r0, [r2] \n\
	pop {r4-r6} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF778: \n\
	.4byte gRam \n\
_080CF77C: \n\
	.4byte 0x000011EF \n\
_080CF780: \n\
	.4byte 0x000011D2 \n\
_080CF784: \n\
	.4byte 0x00000ED2 \n\
_080CF788: \n\
	.4byte 0x00000EF2 \n\
_080CF78C: \n\
	.4byte 0x000015F8 \n\
_080CF790: \n\
	.4byte 0x0000122C \n\
_080CF794: \n\
	.4byte 0x00000EE2 \n\
_080CF798: \n\
	.4byte 0x00001268 \n\
_080CF79C: \n\
	.4byte 0x0000120E \n\
_080CF7A0: \n\
	.4byte 0x0000124A \n\
_080CF7A4: \n\
	.4byte 0x0000131C \n\
_080CF7A8: \n\
	.4byte 0x000010F2 \n\
    ");
}
