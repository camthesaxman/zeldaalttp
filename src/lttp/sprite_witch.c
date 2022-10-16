#include "global.h"

void sub_080D166C(u8 r0)
{
    u8 i;
    u8 temp;

    sub_080D17F4(r0);
    temp = Sprite3_CheckIfActive(r0);
    if (temp == 0)
    {
        u8 temp3 = gRam.unk1132[r0];
        gRam.unk1132[r0] = 2;
        if ((s8)sub_080C500C(r0) != 0)
        {
            sub_080AF16C();
            gRam.unk1719 = 0;
            sub_08093078();
        }
        gRam.unk1132[r0] = temp3;

        if (gRam.unk996 == 0)
        {
            gRam.unkF62[r0] = GetRandomInt();
            gRam.unkF62[r0] &= 1;
            gRam.unkF62[r0] += 2;
        }

        gRam.unk960 = gRam.unkF62[r0];

        for (i = gRam.unk996; (s8)gRam.unk960 >= 0; gRam.unk960--)
            i >>= 1;

        gRam.unkF92[r0] = i & 7;

        if (sub_0809E3CC() == 0)
        {
            gUnknown_08174A9C[gRam.unkF52[r0]](r0);
        }
    }
}

void sub_080D1754(u8 r0)
{
    struct Sprite sp;
    u8 temp;

    if ((((gRam.unk545 & 0x40) == 0) || (gRam.unkA4E != 5)) || (gMagicPowder != 1))
    {
        sub_080C9164(r0, 0x4f, &sp);
    }
    else
    {
        temp = sub_080C500C(r0);
        if ((temp != 0) && (gRam.unkA4E == 5) && (gMagicPowder == 1))
        {
            gMagicPowder = 0;
            gUnknown_02002212 |= 0x80;
            sub_080AA724();
            sub_080C9564(r0, 0x4e, &sp);
            sub_080CF018(r0, 0x3f);
            gRam.unkCB4 = 0;
        }
    }
}

__attribute__((naked)) void sub_080D17F4(u8 r0)
{
    asm(" \n\
    push {r4-r7,lr} \n\
    mov r7, r10 \n\
    mov r6, r9 \n\
    mov r5, r8 \n\
    push {r5-r7} \n\
    sub sp, sp, #20 \n\
    lsl r0, r0, #24 \n\
    lsr r0, r0, #24 \n\
    str r0, [sp, #8] \n\
    mov r1, sp \n\
    add r1, r1, #5 \n\
    add r0, sp, #4 \n\
    ldr r2, [sp, #8] \n\
    bl sub_080C5ACC \n\
    lsl r0, r0, #24 \n\
    lsr r0, r0, #24 \n\
    mov r10, r0 \n\
    cmp r0, #0 \n\
    beq _080D181E \n\
    b _080D19E0 \n\
_080D181E: \n\
    ldr r0, [sp, #8] \n\
    bl sub_080C6340 \n\
    ldr r6, _080D19F0  @ =gRam \n\
    ldr r1, _080D19F4  @ =0x00000F92 \n\
    add r0, r6, r1 \n\
    ldr r2, [sp, #8] \n\
    add r0, r2, r0 \n\
    ldrb r0, [r0] \n\
    str r0, [sp, #12] \n\
    ldr r3, _080D19F8  @ =0x00000968 \n\
    add r0, r6, r3 \n\
    mov r1, #0 \n\
    ldrsb r1, [r0, r1] \n\
    ldr r4, _080D19FC  @ =0x00000969 \n\
    add r0, r6, r4 \n\
    ldrb r0, [r0] \n\
    lsl r0, r0, #24 \n\
    asr r0, r0, #24 \n\
    lsl r0, r0, #8 \n\
    add r1, r1, r0 \n\
    lsl r1, r1, #16 \n\
    lsr r1, r1, #16 \n\
    str r1, [sp, #16] \n\
    add r0, sp, #4 \n\
    ldrb r1, [r0] \n\
    ldr r5, _080D1A00  @ =gUnknown_03003E74 \n\
    ldrh r0, [r5] \n\
    add r0, r0, r1 \n\
    lsl r0, r0, #16 \n\
    lsr r0, r0, #16 \n\
    ldr r7, _080D1A04  @ =gUnknown_08174AAC \n\
    ldr r1, [sp, #12] \n\
    lsl r5, r1, #4 \n\
    add r2, r5, r7 \n\
    sub r3, r3, #8 \n\
    add r3, r3, r6 \n\
    mov r9, r3 \n\
    ldrh r1, [r3] \n\
    ldrh r2, [r2] \n\
    add r1, r1, r2 \n\
    lsl r1, r1, #16 \n\
    lsr r1, r1, #16 \n\
    add r3, r7, #2 \n\
    add r3, r5, r3 \n\
    sub r4, r4, #5 \n\
    add r4, r4, r6 \n\
    mov r8, r4 \n\
    ldrh r2, [r4] \n\
    ldrh r3, [r3] \n\
    add r2, r2, r3 \n\
    lsl r2, r2, #16 \n\
    lsr r2, r2, #16 \n\
    add r4, r7, #4 \n\
    add r4, r5, r4 \n\
    add r3, r7, #6 \n\
    add r3, r5, r3 \n\
    ldrh r3, [r3] \n\
    lsl r3, r3, #8 \n\
    ldrh r4, [r4] \n\
    add r3, r3, r4 \n\
    ldr r4, [sp, #16] \n\
    orr r3, r3, r4 \n\
    lsl r3, r3, #16 \n\
    lsr r3, r3, #16 \n\
    mov r4, r10 \n\
    str r4, [sp] \n\
    bl sub_080C6004 \n\
    add r0, sp, #4 \n\
    ldrb r1, [r0] \n\
    ldr r2, _080D1A00  @ =gUnknown_03003E74 \n\
    ldrh r0, [r2] \n\
    add r0, r0, r1 \n\
    add r0, r0, #1 \n\
    lsl r0, r0, #16 \n\
    lsr r0, r0, #16 \n\
    add r2, r7, #0 \n\
    add r2, r2, #8 \n\
    add r2, r5, r2 \n\
    mov r3, r9 \n\
    ldrh r1, [r3] \n\
    ldrh r2, [r2] \n\
    add r1, r1, r2 \n\
    lsl r1, r1, #16 \n\
    lsr r1, r1, #16 \n\
    add r3, r7, #0 \n\
    add r3, r3, #10 \n\
    add r3, r5, r3 \n\
    mov r4, r8 \n\
    ldrh r2, [r4] \n\
    ldrh r3, [r3] \n\
    add r2, r2, r3 \n\
    lsl r2, r2, #16 \n\
    lsr r2, r2, #16 \n\
    add r4, r7, #0 \n\
    add r4, r4, #12 \n\
    add r4, r5, r4 \n\
    add r3, r7, #0 \n\
    add r3, r3, #14 \n\
    add r5, r5, r3 \n\
    ldrh r3, [r5] \n\
    lsl r3, r3, #8 \n\
    ldrh r4, [r4] \n\
    add r3, r3, r4 \n\
    ldr r5, [sp, #16] \n\
    orr r3, r3, r5 \n\
    lsl r3, r3, #16 \n\
    lsr r3, r3, #16 \n\
    mov r4, r10 \n\
    str r4, [sp] \n\
    bl sub_080C6004 \n\
    mov r4, #0 \n\
    ldr r7, _080D1A08  @ =gUnknown_08174B2C \n\
_080D1904: \n\
    ldr r5, _080D1A00  @ =gUnknown_03003E74 \n\
    mov r10, r5 \n\
    add r0, sp, #4 \n\
    ldrb r1, [r0] \n\
    ldrh r0, [r5] \n\
    add r0, r0, r1 \n\
    add r0, r0, #2 \n\
    lsl r5, r4, #24 \n\
    asr r5, r5, #24 \n\
    add r0, r5, r0 \n\
    lsl r0, r0, #16 \n\
    lsr r0, r0, #16 \n\
    lsl r6, r5, #3 \n\
    add r2, r6, r7 \n\
    ldr r1, _080D19F0  @ =gRam \n\
    mov r3, #150 \n\
    lsl r3, r3, #4 \n\
    add r1, r1, r3 \n\
    mov r8, r1 \n\
    ldrh r1, [r1] \n\
    ldrh r2, [r2] \n\
    add r1, r1, r2 \n\
    lsl r1, r1, #16 \n\
    lsr r1, r1, #16 \n\
    add r3, r7, #2 \n\
    add r3, r6, r3 \n\
    ldr r4, _080D1A0C  @ =gUnknown_03002B94 \n\
    ldrh r2, [r4] \n\
    ldrh r3, [r3] \n\
    add r2, r2, r3 \n\
    lsl r2, r2, #16 \n\
    lsr r2, r2, #16 \n\
    add r4, r7, #4 \n\
    add r4, r6, r4 \n\
    ldr r3, _080D1A10  @ =gUnknown_08174B32 \n\
    add r6, r6, r3 \n\
    ldrh r3, [r6] \n\
    lsl r3, r3, #8 \n\
    ldrh r4, [r4] \n\
    add r3, r3, r4 \n\
    ldr r4, [sp, #16] \n\
    orr r3, r3, r4 \n\
    lsl r3, r3, #16 \n\
    lsr r3, r3, #16 \n\
    mov r4, #2 \n\
    mov r9, r4 \n\
    str r4, [sp] \n\
    bl sub_080C6004 \n\
    add r5, r5, #1 \n\
    lsl r5, r5, #24 \n\
    lsr r4, r5, #24 \n\
    asr r5, r5, #24 \n\
    cmp r5, #2 \n\
    ble _080D1904 \n\
    ldr r0, [sp, #12] \n\
    sub r0, r0, #3 \n\
    lsl r0, r0, #24 \n\
    lsr r0, r0, #24 \n\
    mov r4, #0 \n\
    cmp r0, #2 \n\
    bhi _080D1982 \n\
    mov r4, #1 \n\
_080D1982: \n\
    add r0, sp, #4 \n\
    ldrb r1, [r0] \n\
    mov r5, r10 \n\
    ldrh r0, [r5] \n\
    add r0, r0, r1 \n\
    add r0, r0, #5 \n\
    lsl r0, r0, #16 \n\
    lsr r0, r0, #16 \n\
    ldr r6, _080D1A14  @ =gUnknown_08174B44 \n\
    lsl r4, r4, #24 \n\
    asr r4, r4, #21 \n\
    add r2, r4, r6 \n\
    mov r3, r8 \n\
    ldrh r1, [r3] \n\
    ldrh r2, [r2] \n\
    add r1, r1, r2 \n\
    lsl r1, r1, #16 \n\
    lsr r1, r1, #16 \n\
    add r3, r6, #2 \n\
    add r3, r4, r3 \n\
    mov r5, r8 \n\
    ldrh r2, [r5, #4] \n\
    ldrh r3, [r3] \n\
    add r2, r2, r3 \n\
    lsl r2, r2, #16 \n\
    lsr r2, r2, #16 \n\
    add r5, r6, #4 \n\
    add r5, r4, r5 \n\
    add r6, r6, #6 \n\
    add r4, r4, r6 \n\
    ldrh r3, [r4] \n\
    lsl r3, r3, #8 \n\
    ldrh r5, [r5] \n\
    add r3, r3, r5 \n\
    ldr r4, [sp, #16] \n\
    orr r3, r3, r4 \n\
    lsl r3, r3, #16 \n\
    lsr r3, r3, #16 \n\
    mov r5, r9 \n\
    str r5, [sp] \n\
    bl sub_080C6004 \n\
    ldr r0, [sp, #8] \n\
    mov r1, #255 \n\
    mov r2, #5 \n\
    bl sub_080C6350 \n\
_080D19E0: \n\
    add sp, sp, #20 \n\
    pop {r3-r5} \n\
    mov r8, r3 \n\
    mov r9, r4 \n\
    mov r10, r5 \n\
    pop {r4-r7} \n\
    pop {r0} \n\
    bx r0 \n\
_080D19F0: \n\
    .4byte gRam \n\
_080D19F4: \n\
    .4byte 0x00000F92 \n\
_080D19F8: \n\
    .4byte 0x00000968 \n\
_080D19FC: \n\
    .4byte 0x00000969 \n\
_080D1A00: \n\
    .4byte gUnknown_03003E74 \n\
_080D1A04: \n\
    .4byte gUnknown_08174AAC \n\
_080D1A08: \n\
    .4byte gUnknown_08174B2C \n\
_080D1A0C: \n\
    .4byte gUnknown_03002B94 \n\
_080D1A10: \n\
    .4byte gUnknown_08174B32 \n\
_080D1A14: \n\
    .4byte gUnknown_08174B44 \n\
    ");
}

void sub_080D1A18(u8 r0)
{
    sub_080D166C(r0);
}

void sub_080D1A28(u8 r0)
{
    u8 temp;

    temp = 0;
    if (gMagicPowder == 1)
    {
        temp = 1;
    }
    gUnknown_08174AA4[temp](r0);
}

void sub_080D1A54(u8 r0)
{
    struct Sprite sp;

    if (gMagicPowder != 2)
    {
        if ((s8)gUnknown_02002212 >= 0)
        {
            sub_080C9164(r0, 0x4d, &sp);
        }
        else
        {
            sub_080C9164(r0, 0x4e, &sp);
        }
    }
    else
    {
        sub_080C9164(r0, 0x4d, &sp);
    }
}

void sub_080D1A9C(u8 r0)
{
    gRam.unkF52[r0] = 0;
    gRam.unk1776 = 0;
    sub_080A1588(0x18);
}
