#include "global.h"

void Sprite_LoadPalette(u8 r0)
{
    u8 temp = gRam.unkFF2[r0];
    u8 temp2 = gUnknown_0822788F[temp];

    gRam.unk1032[r0] = temp2;
    gRam.unk1122[r0] = temp2 & 0xf;
}

void GetRandomInt(void)
{
    u8 temp = REG_VCOUNT;
    temp += (u8)gRam.unk996;
    temp += (u8)gRam.unk15DE;
    gRam.unk15DE = temp;
}

__attribute__((naked))
void sub_080CF018(u8 r0, u8 r1) {
    asm(" \n\
	push {r4-r6,lr} \n\
	sub sp, sp, #8 \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	lsl r1, r1, #24 \n\
	lsr r1, r1, #24 \n\
	ldr r4, _080CF088  @ =gRam \n\
	ldr r3, _080CF08C  @ =0x00000EE2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r3, [r2] \n\
	ldr r5, _080CF090  @ =0x00000F02 \n\
	add r2, r4, r5 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	lsl r2, r2, #8 \n\
	add r3, r3, r2 \n\
	ldr r6, _080CF094  @ =0x00000952 \n\
	add r2, r4, r6 \n\
	ldrh r2, [r2] \n\
	sub r3, r3, r2 \n\
	lsl r3, r3, #16 \n\
	lsr r3, r3, #16 \n\
	ldr r2, _080CF098  @ =0xFFFF0000 \n\
	ldr r5, [sp] \n\
	and r5, r5, r2 \n\
	orr r5, r5, r3 \n\
	str r5, [sp] \n\
	ldr r3, _080CF09C  @ =0x00000ED2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	ldr r6, _080CF0A0  @ =0x00000EF2 \n\
	add r3, r4, r6 \n\
	add r0, r0, r3 \n\
	ldrb r0, [r0] \n\
	lsl r0, r0, #8 \n\
	add r2, r2, r0 \n\
	ldr r0, _080CF0A4  @ =0x00000958 \n\
	add r4, r4, r0 \n\
	ldrh r0, [r4] \n\
	sub r2, r2, r0 \n\
	lsl r2, r2, #16 \n\
	ldr r0, _080CF0A8  @ =0x0000FFFF \n\
	and r0, r0, r5 \n\
	orr r0, r0, r2 \n\
	str r0, [sp] \n\
	add r0, r1, #0 \n\
	mov r1, sp \n\
	bl sub_0812A324 \n\
	add sp, sp, #8 \n\
	pop {r4-r6} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF088: \n\
	.4byte gRam \n\
_080CF08C: \n\
	.4byte 0x00000EE2 \n\
_080CF090: \n\
	.4byte 0x00000F02 \n\
_080CF094: \n\
	.4byte 0x00000952 \n\
_080CF098: \n\
	.4byte 0xFFFF0000 \n\
_080CF09C: \n\
	.4byte 0x00000ED2 \n\
_080CF0A0: \n\
	.4byte 0x00000EF2 \n\
_080CF0A4: \n\
	.4byte 0x00000958 \n\
_080CF0A8: \n\
	.4byte 0x0000FFFF \n\
    ");
}

__attribute__((naked))
void sub_080CF0AC(u8 r0, u8 r1) {
    asm(" \n\
	push {r4-r6,lr} \n\
	sub sp, sp, #8 \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	lsl r1, r1, #24 \n\
	lsr r1, r1, #24 \n\
	ldr r4, _080CF11C  @ =gRam \n\
	ldr r3, _080CF120  @ =0x00000EE2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r3, [r2] \n\
	ldr r5, _080CF124  @ =0x00000F02 \n\
	add r2, r4, r5 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	lsl r2, r2, #8 \n\
	add r3, r3, r2 \n\
	ldr r6, _080CF128  @ =0x00000952 \n\
	add r2, r4, r6 \n\
	ldrh r2, [r2] \n\
	sub r3, r3, r2 \n\
	lsl r3, r3, #16 \n\
	lsr r3, r3, #16 \n\
	ldr r2, _080CF12C  @ =0xFFFF0000 \n\
	ldr r5, [sp] \n\
	and r5, r5, r2 \n\
	orr r5, r5, r3 \n\
	str r5, [sp] \n\
	ldr r3, _080CF130  @ =0x00000ED2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	ldr r6, _080CF134  @ =0x00000EF2 \n\
	add r3, r4, r6 \n\
	add r0, r0, r3 \n\
	ldrb r0, [r0] \n\
	lsl r0, r0, #8 \n\
	add r2, r2, r0 \n\
	ldr r0, _080CF138  @ =0x00000958 \n\
	add r4, r4, r0 \n\
	ldrh r0, [r4] \n\
	sub r2, r2, r0 \n\
	lsl r2, r2, #16 \n\
	ldr r0, _080CF13C  @ =0x0000FFFF \n\
	and r0, r0, r5 \n\
	orr r0, r0, r2 \n\
	str r0, [sp] \n\
	add r0, r1, #0 \n\
	mov r1, sp \n\
	bl sub_0812A324 \n\
	add sp, sp, #8 \n\
	pop {r4-r6} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF11C: \n\
	.4byte gRam \n\
_080CF120: \n\
	.4byte 0x00000EE2 \n\
_080CF124: \n\
	.4byte 0x00000F02 \n\
_080CF128: \n\
	.4byte 0x00000952 \n\
_080CF12C: \n\
	.4byte 0xFFFF0000 \n\
_080CF130: \n\
	.4byte 0x00000ED2 \n\
_080CF134: \n\
	.4byte 0x00000EF2 \n\
_080CF138: \n\
	.4byte 0x00000958 \n\
_080CF13C: \n\
	.4byte 0x0000FFFF \n\
    ");
}

__attribute__((naked))
void sub_080CF140(u8 r0, u8 r1) {
    asm(" \n\
	push {r4-r6,lr} \n\
	sub sp, sp, #8 \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	lsl r1, r1, #24 \n\
	lsr r1, r1, #24 \n\
	ldr r4, _080CF1B0  @ =gRam \n\
	ldr r3, _080CF1B4  @ =0x00000EE2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r3, [r2] \n\
	ldr r5, _080CF1B8  @ =0x00000F02 \n\
	add r2, r4, r5 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	lsl r2, r2, #8 \n\
	add r3, r3, r2 \n\
	ldr r6, _080CF1BC  @ =0x00000952 \n\
	add r2, r4, r6 \n\
	ldrh r2, [r2] \n\
	sub r3, r3, r2 \n\
	lsl r3, r3, #16 \n\
	lsr r3, r3, #16 \n\
	ldr r2, _080CF1C0  @ =0xFFFF0000 \n\
	ldr r5, [sp] \n\
	and r5, r5, r2 \n\
	orr r5, r5, r3 \n\
	str r5, [sp] \n\
	ldr r3, _080CF1C4  @ =0x00000ED2 \n\
	add r2, r4, r3 \n\
	add r2, r0, r2 \n\
	ldrb r2, [r2] \n\
	ldr r6, _080CF1C8  @ =0x00000EF2 \n\
	add r3, r4, r6 \n\
	add r0, r0, r3 \n\
	ldrb r0, [r0] \n\
	lsl r0, r0, #8 \n\
	add r2, r2, r0 \n\
	ldr r0, _080CF1CC  @ =0x00000958 \n\
	add r4, r4, r0 \n\
	ldrh r0, [r4] \n\
	sub r2, r2, r0 \n\
	lsl r2, r2, #16 \n\
	ldr r0, _080CF1D0  @ =0x0000FFFF \n\
	and r0, r0, r5 \n\
	orr r0, r0, r2 \n\
	str r0, [sp] \n\
	add r0, r1, #0 \n\
	mov r1, sp \n\
	bl sub_0812A324 \n\
	add sp, sp, #8 \n\
	pop {r4-r6} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF1B0: \n\
	.4byte gRam \n\
_080CF1B4: \n\
	.4byte 0x00000EE2 \n\
_080CF1B8: \n\
	.4byte 0x00000F02 \n\
_080CF1BC: \n\
	.4byte 0x00000952 \n\
_080CF1C0: \n\
	.4byte 0xFFFF0000 \n\
_080CF1C4: \n\
	.4byte 0x00000ED2 \n\
_080CF1C8: \n\
	.4byte 0x00000EF2 \n\
_080CF1CC: \n\
	.4byte 0x00000958 \n\
_080CF1D0: \n\
	.4byte 0x0000FFFF \n\
    ");
}

__attribute__((naked))
void Sound_SetSfxPanWithPlayerCoords(u8 r0)
{
    asm(" \n\
	push {r4,r5,lr} \n\
	sub sp, sp, #8 \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	ldr r4, _080CF230  @ =gRam \n\
	ldr r2, _080CF234  @ =0x000016C4 \n\
	add r1, r4, r2 \n\
	ldrb r3, [r1] \n\
	ldr r5, _080CF238  @ =0x000016C5 \n\
	add r1, r4, r5 \n\
	ldrb r1, [r1] \n\
	lsl r1, r1, #24 \n\
	asr r1, r1, #24 \n\
	lsl r1, r1, #8 \n\
	add r3, r3, r1 \n\
	ldr r2, _080CF23C  @ =0x00000952 \n\
	add r1, r4, r2 \n\
	ldrh r1, [r1] \n\
	sub r3, r3, r1 \n\
	lsl r3, r3, #16 \n\
	sub r5, r5, #5 \n\
	add r1, r4, r5 \n\
	ldrb r2, [r1] \n\
	add r5, r5, #1 \n\
	add r1, r4, r5 \n\
	ldrb r1, [r1] \n\
	lsl r1, r1, #24 \n\
	asr r1, r1, #24 \n\
	lsl r1, r1, #8 \n\
	add r2, r2, r1 \n\
	ldr r1, _080CF240  @ =0x00000958 \n\
	add r4, r4, r1 \n\
	ldrh r1, [r4] \n\
	sub r2, r2, r1 \n\
	lsl r2, r2, #16 \n\
	lsr r3, r3, #16 \n\
	orr r3, r3, r2 \n\
	str r3, [sp] \n\
	mov r1, sp \n\
	bl sub_0812A324 \n\
	add sp, sp, #8 \n\
	pop {r4,r5} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF230: \n\
	.4byte gRam \n\
_080CF234: \n\
	.4byte 0x000016C4 \n\
_080CF238: \n\
	.4byte 0x000016C5 \n\
_080CF23C: \n\
	.4byte 0x00000952 \n\
_080CF240: \n\
	.4byte 0x00000958 \n\
    ");
}

__attribute__((naked))
void sub_080CF244(u8 r0, u8 r1, u8 r2) {
    asm(" \n\
	push {r4,r5,lr} \n\
	sub sp, sp, #8 \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	lsl r1, r1, #24 \n\
	lsr r1, r1, #24 \n\
	lsl r2, r2, #24 \n\
	lsr r2, r2, #24 \n\
	ldr r4, _080CF280  @ =gRam \n\
	ldr r5, _080CF284  @ =0x00000952 \n\
	add r3, r4, r5 \n\
	ldrb r3, [r3] \n\
	sub r0, r0, r3 \n\
	lsl r0, r0, #16 \n\
	ldr r3, _080CF288  @ =0x00000958 \n\
	add r4, r4, r3 \n\
	ldrb r3, [r4] \n\
	sub r1, r1, r3 \n\
	lsl r1, r1, #16 \n\
	lsr r0, r0, #16 \n\
	orr r0, r0, r1 \n\
	str r0, [sp] \n\
	add r0, r2, #0 \n\
	mov r1, sp \n\
	bl sub_0812A324 \n\
	add sp, sp, #8 \n\
	pop {r4,r5} \n\
	pop {r0} \n\
	bx r0 \n\
_080CF280: \n\
	.4byte gRam \n\
_080CF284: \n\
	.4byte 0x00000952 \n\
_080CF288: \n\
	.4byte 0x00000958 \n\
    ");
}

__attribute__((naked))
u16 sub_080CF28C(u8 r0, u8 r1) {
    asm(" \n\
	push {r4-r7,lr} \n\
	mov r7, r10 \n\
	mov r6, r9 \n\
	mov r5, r8 \n\
	push {r5-r7} \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	mov r12, r0 \n\
	lsl r1, r1, #24 \n\
	lsr r6, r1, #24 \n\
	ldr r7, _080CF2C0  @ =gRam \n\
	lsl r1, r0, #1 \n\
	ldr r2, _080CF2C4  @ =0x0000162A \n\
	add r0, r7, r2 \n\
	add r5, r1, r0 \n\
	ldrh r2, [r5] \n\
	add r0, r2, r6 \n\
	lsl r0, r0, #16 \n\
	lsr r3, r0, #16 \n\
	ldr r0, _080CF2C8  @ =gUnknown_08172FC8 \n\
	add r4, r1, r0 \n\
	ldrh r0, [r4] \n\
	cmp r3, r0 \n\
	bcs _080CF2CC \n\
	strh r3, [r5] \n\
	b _080CF300 \n\
_080CF2C0: \n\
	.4byte gRam \n\
_080CF2C4: \n\
	.4byte 0x0000162A \n\
_080CF2C8: \n\
	.4byte gUnknown_08172FC8 \n\
_080CF2CC: \n\
	ldr r2, _080CF324  @ =0x00001636 \n\
	add r0, r7, r2 \n\
	add r1, r1, r0 \n\
	mov r8, r1 \n\
	ldr r0, _080CF328  @ =gUnknown_08172FD4 \n\
	mov r10, r0 \n\
	ldrh r7, [r4] \n\
	ldrh r4, [r1] \n\
	mov r2, #7 \n\
	mov r9, r2 \n\
	mov r0, r12 \n\
	lsl r5, r0, #4 \n\
_080CF2E4: \n\
	add r0, r4, #0 \n\
	add r3, r0, #1 \n\
	add r4, r3, #0 \n\
	mov r1, r9 \n\
	and r1, r1, r0 \n\
	lsl r1, r1, #1 \n\
	add r1, r1, r5 \n\
	add r1, r1, r10 \n\
	ldrh r2, [r1] \n\
	add r0, r2, r6 \n\
	cmp r0, r7 \n\
	bgt _080CF2E4 \n\
	mov r0, r8 \n\
	strh r3, [r0] \n\
_080CF300: \n\
	add r1, r2, #0 \n\
	mov r2, #128 \n\
	lsl r2, r2, #4 \n\
	add r0, r1, r2 \n\
	lsl r0, r0, #16 \n\
	lsr r2, r0, #16 \n\
	lsr r1, r1, #2 \n\
	ldr r0, _080CF32C  @ =gUnknown_03003E74 \n\
	strh r1, [r0] \n\
	add r0, r2, #0 \n\
	pop {r3-r5} \n\
	mov r8, r3 \n\
	mov r9, r4 \n\
	mov r10, r5 \n\
	pop {r4-r7} \n\
	pop {r1} \n\
	bx r1 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF324: \n\
	.4byte 0x00001636 \n\
_080CF328: \n\
	.4byte gUnknown_08172FD4 \n\
_080CF32C: \n\
	.4byte gUnknown_03003E74 \n\
    ");
}

void sub_080CF330(void)
{
    u8 i;
    for (i = 0; i < 6; i++)
    {
        gRam.unk162A[i] = gUnknown_08172FBC[i];
    }
}

u16 sub_080CF35C(u8 r0)
{
    return sub_080CF370(r0);
}

u16 sub_080CF370(u8 r0)
{
    return sub_080CF400(0, r0);
}

u16 sub_080CF388(u8 r0)
{
    return sub_080CF400(1, r0);
}

u16 sub_080CF3A0(u8 r0)
{
    return sub_080CF400(2, r0);
}

u16 sub_080CF3B8(u8 r0)
{
    return sub_080CF400(3, r0);
}

u16 sub_080CF3D0(u8 r0)
{
    return sub_080CF400(4, r0);
}

u16 sub_080CF3E8(u8 r0)
{
    return sub_080CF400(5, r0);
}

u16 sub_080CF400(u8 r0, u8 r1)
{
    return sub_080CF28C(r0, r1);
}

#ifdef NONMATCHING
#else
__attribute__((naked)) void sub_080CF418(u8 r0)
{
    asm(" \n\
	push {r4,r5,lr} \n\
	lsl r0, r0, #24 \n\
	lsr r5, r0, #24 \n\
	ldr r1, _080CF438  @ =gRam \n\
	ldr r2, _080CF43C  @ =0x00000FF2 \n\
	add r0, r1, r2 \n\
	add r4, r5, r0 \n\
	ldrb r0, [r4] \n\
	cmp r0, #59 \n\
	bne _080CF440 \n\
	sub r2, r2, #160 \n\
	add r0, r1, r2 \n\
	add r0, r5, r0 \n\
	mov r1, #3 \n\
	strb r1, [r0] \n\
	b _080CF46C \n\
_080CF438: \n\
	.4byte gRam \n\
_080CF43C: \n\
	.4byte 0x00000FF2 \n\
_080CF440: \n\
	ldr r2, _080CF474  @ =0x00000FA2 \n\
	add r0, r1, r2 \n\
	add r0, r5, r0 \n\
	mov r1, #0 \n\
	strb r1, [r0] \n\
	ldrb r4, [r4] \n\
	add r4, r4, #40 \n\
	lsl r4, r4, #24 \n\
	lsr r4, r4, #24 \n\
	ldr r0, _080CF478  @ =gUnknown_08173034 \n\
	add r0, r4, r0 \n\
	ldrb r1, [r0] \n\
	add r0, r5, #0 \n\
	bl sub_080CF140 \n\
	ldr r0, _080CF47C  @ =gUnknown_08173044 \n\
	lsl r4, r4, #2 \n\
	add r4, r4, r0 \n\
	ldr r1, [r4] \n\
	add r0, r5, #0 \n\
	bl _call_via_r1 \n\
_080CF46C: \n\
	pop {r4,r5} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF474: \n\
	.4byte 0x00000FA2 \n\
_080CF478: \n\
	.4byte gUnknown_08173034 \n\
_080CF47C: \n\
	.4byte gUnknown_08173044 \n\
    ");
}
#endif

// missing push {lr}
#ifdef NONMATCHING
void sub_080CF480(u8 r0)
{
    gUnknown_0200233E = gRam.unk1002[r0];

    if (gRam.unk1002[r0] == 3)
    {
        if (gUnknown_020023F1 != 0)
        {
            gUnknown_020023F1 = 0;
        }
    }
}
#else
__attribute__((naked)) void sub_080CF480(u8 r0)
{
    asm(" \n\
	push {lr} \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	ldr r2, _080CF4AC  @ =gUnknown_0200233E \n\
	ldr r1, _080CF4B0  @ =gRam \n\
	ldr r3, _080CF4B4  @ =0x00001002 \n\
	add r1, r1, r3 \n\
	add r0, r0, r1 \n\
	ldrb r1, [r0] \n\
	strb r1, [r2] \n\
	ldrb r0, [r0] \n\
	cmp r0, #3 \n\
	bne _080CF4A6 \n\
	ldr r1, _080CF4B8  @ =gUnknown_020023F1 \n\
	ldrb r0, [r1] \n\
	cmp r0, #0 \n\
	beq _080CF4A6 \n\
	mov r0, #0 \n\
	strb r0, [r1] \n\
_080CF4A6: \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF4AC: \n\
	.4byte gUnknown_0200233E \n\
_080CF4B0: \n\
	.4byte gRam \n\
_080CF4B4: \n\
	.4byte 0x00001002 \n\
_080CF4B8: \n\
	.4byte gUnknown_020023F1 \n\
    ");
}
#endif

void sub_080CF4BC(u8 r0)
{
    gRam.unk1776 = 0;
    sub_080A1588(0x32);
    sub_080CF504(r0);
}

void sub_080CF4E8(u8 r0)
{
    gUnknown_0200234F++;
    sub_080CF504(r0);
}

__attribute__((naked)) void sub_080CF504(u8 r0)
{
    asm(" \n\
	push {r4,lr} \n\
	lsl r0, r0, #24 \n\
	lsr r0, r0, #24 \n\
	ldr r2, _080CF544  @ =gRam \n\
	lsl r3, r0, #1 \n\
	ldr r4, _080CF548  @ =0x00001192 \n\
	add r1, r2, r4 \n\
	add r3, r3, r1 \n\
	ldr r4, _080CF54C  @ =0x00001002 \n\
	add r1, r2, r4 \n\
	add r1, r0, r1 \n\
	ldrb r1, [r1] \n\
	strh r1, [r3] \n\
	ldr r1, _080CF550  @ =0x00000AA8 \n\
	add r4, r2, r1 \n\
	ldr r3, _080CF554  @ =gUnknown_08174A18 \n\
	ldr r1, _080CF558  @ =0x00000E85 \n\
	add r2, r2, r1 \n\
	add r2, r0, r2 \n\
	ldrb r1, [r2] \n\
	add r1, r1, r3 \n\
	ldrb r1, [r1] \n\
	lsl r1, r1, #8 \n\
	ldrh r2, [r4] \n\
	orr r1, r1, r2 \n\
	strh r1, [r4] \n\
	bl sub_080CB9D4 \n\
	pop {r4} \n\
	pop {r0} \n\
	bx r0 \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF544: \n\
	.4byte gRam \n\
_080CF548: \n\
	.4byte 0x00001192 \n\
_080CF54C: \n\
	.4byte 0x00001002 \n\
_080CF550: \n\
	.4byte 0x00000AA8 \n\
_080CF554: \n\
	.4byte gUnknown_08174A18 \n\
_080CF558: \n\
	.4byte 0x00000E85 \n\
    ");
}

void sub_080CF55C(u8 r0)
{
    sub_080CF0AC(r0, 0x27);
    sub_080BEA28(0x1d, 1);
    sub_080CF588(0x38);
}

void sub_080CF57C()
{
    sub_080CF588(8);
}

void sub_080CF588(u8 r0)
{
    gUnknown_02002352 += r0;
}

void sub_080CF59C(u8 r0)
{
    sub_080AA83C(gUnknown_08173080[gRam.unkFF2[r0] - 0xD9]);
}

void sub_080CF5C8(u8 r0)
{
    gUnknown_02002355 += gUnknown_08173083[gRam.unkFF2[r0] - 0xDC];
}

void sub_080CF600(void)
{
    sub_080CF624((gUnknown_02002353 + 0x10));
}

void sub_080CF618(void)
{
    sub_080CF624(0x80);
}

void sub_080CF624(u8 r0)
{
    gUnknown_02002353 = r0;
}

void sub_080CF630(u8 r0)
{
    u8 temp = gRam.unk1082[r0];

    if (temp != 0)
    {
        sub_080CF66C(temp);
    }
    else
    {
        sub_080CF66C(5);
    }
}

void sub_080CF660(void)
{
    sub_080CF66C(10);
}

void sub_080CF66C(u8 r0)
{
    gUnknown_02002356 += r0;
}

// missing push {lr}
#ifdef NONMATCHING
bool8 sub_080CF680(u8 find)
{
    char cur;
    char *iter = gUnknown_08174900;
    register char i asm("r0");

    for (;;)
    {
        cur = *iter;

        i = cur;
        if (i == 0xFF)
            break;

        iter++;

        if (cur == find)
            return TRUE;
    }
    return FALSE;
}
#else
__attribute__((naked))
bool8
sub_080CF680(u8 find)
{
    asm(" \n\
	push {lr} \n\
	lsl r0, r0, #24 \n\
	lsr r3, r0, #24 \n\
	ldr r2, _080CF68C  @ =gUnknown_08174900 \n\
	b _080CF69A \n\
	.byte 0x00 \n\
	.byte 0x00 \n\
_080CF68C: \n\
	.4byte gUnknown_08174900 \n\
_080CF690: \n\
	add r2, r2, #1 \n\
	cmp r1, r3 \n\
	bne _080CF69A \n\
	mov r0, #1 \n\
	b _080CF6A4 \n\
_080CF69A: \n\
	ldrb r1, [r2] \n\
	add r0, r1, #0 \n\
	cmp r0, #255 \n\
	bne _080CF690 \n\
	mov r0, #0 \n\
_080CF6A4: \n\
	pop {r1} \n\
	bx r1 \n\
    ");
}
#endif
