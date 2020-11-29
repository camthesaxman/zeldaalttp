#include "global.h"

void Sprite_Faerie(u8 r0)
{
    u8 temp;

    gRam.unk1172[r0] = 1;
    if (gRam.unkF52[r0] == 0)
    {
        if (gRam.unk9B2 == 0)
        {
            gRam.unkD94[r0] = 0x30;
        }
        temp = sub_080C6208(r0);
        if (temp != 0)
        {
            return;
        }
    }
    sub_080CFE3C(r0);
    temp = Sprite3_CheckIfActive(r0);
    if (temp == 0)
    {
        gUnknown_08174A08[gRam.unkF52[r0]](r0);
    }
}

void sub_080CFA30(u8 r0)
{
    u8 uVar1;
    struct Sprite sp;

    if (gRam.unk10E2[r0] == 0)
    {
        uVar1 = sub_080C4F98(r0);
        if (uVar1 == 0)
        {
            sub_080C4948(&sp, r0);
            if (sp.unk0 != 0)
            {
                gRam.unkF52[r0]++;
                sub_080C9564(r0, 0xcc, &sp.unk1);
                return;
            }
        }
        else
        {
            sub_080CF418(r0);
        }
    }
    uVar1 = sub_080D0820(r0);
    if (uVar1 == 0)
    {
        sub_080CFAA8(r0);
    }
}

// Too hard
#ifdef NONMATCHING
void sub_080CFAA8(u8 r0)
{
    s8 temp;
    u8 uVar2;
    u8 uVar4;
    u8 temp2;
    u8 *puVar7;

    gRam.unkF92[r0] = gRam.unk996 >> 3 & 1;
    if ((gRam.unk9B2 != 0) && gRam.unkFD2[r0] == 0)
    {
        if ((sub_080C7A20(r0) & 3) != 0)
        {
            gRam.unkF22[r0] = ~gRam.unkF22[r0] + 1;
            gRam.unkFB2[r0] = ~gRam.unkFB2[r0] + 1;
            *puVar7 = 0x20;
        }
        if (gRam.unk1042[r0] != 0xc)
        {
            gRam.unkF12[r0] = ~gRam.unkF12[r0] + 1;
            gRam.unkF62[r0] = ~gRam.unkF62[r0] + 1;
            *puVar7 = 0x20;
        }
    }
    if (gRam.unkF22[r0] != 0)
    {
        if (gRam.unkF22[r0] * 0x1000000 >= 0)
        {
            temp2 = gRam.unk1122[r0] | 0x40;
        }
        else
        {
            temp2 = gRam.unk1122[r0] & 0xbf;
        }
        gRam.unk1122[r0] = temp2;
    }
    Sprite3_Move(r0);
    if ((gRam.unk996 & 0x3f) == 0)
    {
        gRam.unk968 = GetRandomInt();
        gRam.unk969 = gRam.unk16C5;
        gRam.unk96C = GetRandomInt();
        gRam.unk96D = gRam.unk16C1;
        sub_080C2DCC(r0, 0x10);
        gRam.unkF62[r0] = gRam.unk960;
        gRam.unkFB2[r0] = gRam.unk961;
    }
    temp2 = gRam.unk996;
    if ((gRam.unk996 & 0xf) == 0)
    {
        u8 t;

        gRam.unk960 = gRam.unkF62[r0];
        if ((gRam.unkF62[r0] << 0x18) > 0)
        {
            gRam.unk960 = temp2 + gRam.unkF62[r0];
        }

        gRam.unk964.half = gRam.unkF12[r0];
        if ((gRam.unkF12[r0] << 0x18) > 0)
        {
            gRam.unk964.half = temp2 + gRam.unkF12[r0];
        }
        gRam.unkF12[r0] = (*(s16 *)&gRam.unk964.half + *(s16 *)&gRam.unk960) >> 1;

        gRam.unk960 = gRam.unkFB2[r0];
        if ((gRam.unkFB2[r0] << 0x18) > 0)
        {
            gRam.unk960 = temp2 + gRam.unkFB2[r0];
        }

        gRam.unk964.half = gRam.unkF22[r0];
        if ((gRam.unkF22[r0] << 0x18) > 0)
        {
            gRam.unk964.half += temp2;
        }
        gRam.unkF22[r0] = (*(s16 *)&gRam.unk960 + *(s16 *)&gRam.unk964.half) >> 1;
    }

    sub_080C2C4C(r0);

    gRam.unk1152[r0] += gUnknown_08174A10[GetRandomInt() & 1];
    gRam.unk1152[r0] = gRam.unk1152[r0] + temp2 + 1;
    if (gRam.unk1142[r0] < 8)
    {
        gRam.unk1142[r0] = 8;
        temp2 = 5;
    }
    else
    {
        if (gRam.unk1142[r0] < 0x19)
        {
            return;
        }
        gRam.unk1142[r0] = 0x18;
        temp2 = 0xfb;
    }
    gRam.unk1152[r0] = temp2;
}
#else
__attribute__((naked)) void sub_080CFAA8(u8 r0)
{
    asm(" \n\
    push {r4-r7,lr} \n\
    mov r7, r10 \n\
    mov r6, r9 \n\
    mov r5, r8 \n\
    push {r5-r7} \n\
    sub sp, sp, #4 \n\
    lsl r0, r0, #24 \n\
    lsr r5, r0, #24 \n\
    ldr r3, _080CFB68  @ =gRam \n\
    ldr r0, _080CFB6C  @ =0x00000F92 \n\
    add r2, r3, r0 \n\
    add r2, r5, r2 \n\
    ldr r1, _080CFB70  @ =0x00000996 \n\
    add r0, r3, r1 \n\
    ldrb r0, [r0] \n\
    lsr r0, r0, #3 \n\
    mov r1, #1 \n\
    and r0, r0, r1 \n\
    strb r0, [r2] \n\
    ldr r2, _080CFB74  @ =0x000009B2 \n\
    add r0, r3, r2 \n\
    ldrb r0, [r0] \n\
    lsl r0, r0, #24 \n\
    asr r0, r0, #24 \n\
    add r6, r3, #0 \n\
    cmp r0, #0 \n\
    beq _080CFB44 \n\
    ldr r3, _080CFB78  @ =0x00000FD2 \n\
    add r0, r6, r3 \n\
    add r4, r5, r0 \n\
    ldrb r0, [r4] \n\
    cmp r0, #0 \n\
    bne _080CFB44 \n\
    add r0, r5, #0 \n\
    bl sub_080C7A20 \n\
    mov r1, #3 \n\
    and r1, r1, r0 \n\
    cmp r1, #0 \n\
    beq _080CFB18 \n\
    ldr r0, _080CFB7C  @ =0x00000F22 \n\
    add r1, r6, r0 \n\
    add r1, r5, r1 \n\
    ldrb r0, [r1] \n\
    mvn r0, r0 \n\
    add r0, r0, #1 \n\
    strb r0, [r1] \n\
    ldr r2, _080CFB80  @ =0x00000FB2 \n\
    add r1, r6, r2 \n\
    add r1, r5, r1 \n\
    ldrb r0, [r1] \n\
    mvn r0, r0 \n\
    add r0, r0, #1 \n\
    strb r0, [r1] \n\
    mov r0, #32 \n\
    strb r0, [r4] \n\
_080CFB18: \n\
    ldr r3, _080CFB84  @ =0x00001042 \n\
    add r0, r6, r3 \n\
    add r0, r5, r0 \n\
    ldrb r0, [r0] \n\
    cmp r0, #12 \n\
    beq _080CFB44 \n\
    ldr r0, _080CFB88  @ =0x00000F12 \n\
    add r1, r6, r0 \n\
    add r1, r5, r1 \n\
    ldrb r0, [r1] \n\
    mvn r0, r0 \n\
    add r0, r0, #1 \n\
    strb r0, [r1] \n\
    ldr r2, _080CFB8C  @ =0x00000F62 \n\
    add r1, r6, r2 \n\
    add r1, r5, r1 \n\
    ldrb r0, [r1] \n\
    mvn r0, r0 \n\
    add r0, r0, #1 \n\
    strb r0, [r1] \n\
    mov r0, #32 \n\
    strb r0, [r4] \n\
_080CFB44: \n\
    ldr r3, _080CFB7C  @ =0x00000F22 \n\
    add r0, r6, r3 \n\
    add r0, r5, r0 \n\
    ldrb r0, [r0] \n\
    cmp r0, #0 \n\
    beq _080CFBA8 \n\
    lsl r0, r0, #24 \n\
    cmp r0, #0 \n\
    blt _080CFB94 \n\
    ldr r1, _080CFB90  @ =0x00001122 \n\
    add r0, r6, r1 \n\
    add r0, r5, r0 \n\
    ldrb r1, [r0] \n\
    mov r0, #64 \n\
    add r2, r0, #0 \n\
    orr r2, r2, r1 \n\
    b _080CFBA0 \n\
    .byte 0x00 \n\
    .byte 0x00 \n\
_080CFB68: \n\
    .4byte gRam \n\
_080CFB6C: \n\
    .4byte 0x00000F92 \n\
_080CFB70: \n\
    .4byte 0x00000996 \n\
_080CFB74: \n\
    .4byte 0x000009B2 \n\
_080CFB78: \n\
    .4byte 0x00000FD2 \n\
_080CFB7C: \n\
    .4byte 0x00000F22 \n\
_080CFB80: \n\
    .4byte 0x00000FB2 \n\
_080CFB84: \n\
    .4byte 0x00001042 \n\
_080CFB88: \n\
    .4byte 0x00000F12 \n\
_080CFB8C: \n\
    .4byte 0x00000F62 \n\
_080CFB90: \n\
    .4byte 0x00001122 \n\
_080CFB94: \n\
    ldr r2, _080CFCFC  @ =0x00001122 \n\
    add r0, r6, r2 \n\
    add r0, r5, r0 \n\
    ldrb r0, [r0] \n\
    mov r2, #191 \n\
    and r2, r2, r0 \n\
_080CFBA0: \n\
    ldr r3, _080CFCFC  @ =0x00001122 \n\
    add r0, r6, r3 \n\
    add r0, r5, r0 \n\
    strb r2, [r0] \n\
_080CFBA8: \n\
    add r0, r5, #0 \n\
    bl Sprite3_Move \n\
    ldr r4, _080CFD00  @ =gRam \n\
    ldr r0, _080CFD04  @ =0x00000996 \n\
    add r6, r4, r0 \n\
    ldrb r1, [r6] \n\
    mov r0, #63 \n\
    and r0, r0, r1 \n\
    cmp r0, #0 \n\
    bne _080CFC10 \n\
    bl GetRandomInt \n\
    ldr r2, _080CFD08  @ =0x00000968 \n\
    add r1, r4, r2 \n\
    strb r0, [r1] \n\
    ldr r3, _080CFD0C  @ =0x000016C5 \n\
    add r0, r4, r3 \n\
    ldrb r1, [r0] \n\
    add r2, r2, #1 \n\
    add r0, r4, r2 \n\
    strb r1, [r0] \n\
    bl GetRandomInt \n\
    ldr r3, _080CFD10  @ =0x0000096C \n\
    add r1, r4, r3 \n\
    strb r0, [r1] \n\
    ldr r1, _080CFD14  @ =0x000016C1 \n\
    add r0, r4, r1 \n\
    ldrb r1, [r0] \n\
    ldr r2, _080CFD18  @ =0x0000096D \n\
    add r0, r4, r2 \n\
    strb r1, [r0] \n\
    add r0, r5, #0 \n\
    mov r1, #16 \n\
    bl sub_080C2DCC \n\
    ldr r3, _080CFD1C  @ =0x00000F62 \n\
    add r0, r4, r3 \n\
    add r0, r5, r0 \n\
    mov r2, #150 \n\
    lsl r2, r2, #4 \n\
    add r1, r4, r2 \n\
    ldrb r1, [r1] \n\
    strb r1, [r0] \n\
    add r3, r3, #80 \n\
    add r0, r4, r3 \n\
    add r0, r5, r0 \n\
    add r2, r2, #1 \n\
    add r1, r4, r2 \n\
    ldrb r1, [r1] \n\
    strb r1, [r0] \n\
_080CFC10: \n\
    ldrb r0, [r6] \n\
    mov r3, #15 \n\
    and r3, r3, r0 \n\
    cmp r3, #0 \n\
    bne _080CFCC0 \n\
    ldr r0, _080CFD20  @ =0x00000961 \n\
    add r7, r4, r0 \n\
    mov r0, #255 \n\
    strb r0, [r7] \n\
    ldr r1, _080CFD24  @ =0x00000965 \n\
    add r1, r1, r4 \n\
    mov r12, r1 \n\
    mov r2, #1 \n\
    neg r2, r2 \n\
    mov r9, r2 \n\
    add r0, r2, #0 \n\
    strb r0, [r1] \n\
    ldr r1, _080CFD1C  @ =0x00000F62 \n\
    add r0, r4, r1 \n\
    add r0, r5, r0 \n\
    ldrb r0, [r0] \n\
    mov r2, #150 \n\
    lsl r2, r2, #4 \n\
    add r2, r2, r4 \n\
    mov r8, r2 \n\
    strb r0, [r2] \n\
    lsl r0, r0, #24 \n\
    cmp r0, #0 \n\
    blt _080CFC4C \n\
    strb r3, [r7] \n\
_080CFC4C: \n\
    ldr r1, _080CFD28  @ =0x00000F12 \n\
    add r0, r4, r1 \n\
    add r2, r5, r0 \n\
    ldrb r0, [r2] \n\
    ldr r1, _080CFD2C  @ =0x00000964 \n\
    add r6, r4, r1 \n\
    strb r0, [r6] \n\
    lsl r0, r0, #24 \n\
    cmp r0, #0 \n\
    blt _080CFC64 \n\
    mov r0, r12 \n\
    strb r3, [r0] \n\
_080CFC64: \n\
    mov r1, r8 \n\
    mov r0, #0 \n\
    ldrsh r1, [r1, r0] \n\
    mov r10, r1 \n\
    mov r0, #0 \n\
    ldrsh r1, [r6, r0] \n\
    add r0, r1, #0 \n\
    add r0, r0, r10 \n\
    asr r0, r0, #1 \n\
    strb r0, [r2] \n\
    ldrb r0, [r7] \n\
    mov r1, r9 \n\
    orr r0, r0, r1 \n\
    strb r0, [r7] \n\
    mov r2, r12 \n\
    ldrb r0, [r2] \n\
    orr r0, r0, r1 \n\
    strb r0, [r2] \n\
    ldr r1, _080CFD30  @ =0x00000FB2 \n\
    add r0, r4, r1 \n\
    add r0, r5, r0 \n\
    ldrb r0, [r0] \n\
    mov r2, r8 \n\
    strb r0, [r2] \n\
    lsl r0, r0, #24 \n\
    cmp r0, #0 \n\
    blt _080CFC9C \n\
    strb r3, [r7] \n\
_080CFC9C: \n\
    ldr r1, _080CFD34  @ =0x00000F22 \n\
    add r0, r4, r1 \n\
    add r2, r5, r0 \n\
    ldrb r0, [r2] \n\
    strb r0, [r6] \n\
    lsl r0, r0, #24 \n\
    cmp r0, #0 \n\
    blt _080CFCB0 \n\
    mov r0, r12 \n\
    strb r3, [r0] \n\
_080CFCB0: \n\
    mov r1, r8 \n\
    mov r3, #0 \n\
    ldrsh r0, [r1, r3] \n\
    mov r3, #0 \n\
    ldrsh r1, [r6, r3] \n\
    add r0, r0, r1 \n\
    asr r0, r0, #1 \n\
    strb r0, [r2] \n\
_080CFCC0: \n\
    add r0, r5, #0 \n\
    bl sub_080C2C4C \n\
    bl GetRandomInt \n\
    ldr r2, _080CFD00  @ =gRam \n\
    ldr r3, _080CFD38  @ =0x00001152 \n\
    add r1, r2, r3 \n\
    add r4, r5, r1 \n\
    ldr r3, _080CFD3C  @ =gUnknown_08174A10 \n\
    mov r1, #1 \n\
    and r1, r1, r0 \n\
    add r1, r1, r3 \n\
    ldrb r0, [r1] \n\
    ldrb r1, [r4] \n\
    add r0, r0, r1 \n\
    strb r0, [r4] \n\
    ldrb r1, [r3] \n\
    add r0, r0, r1 \n\
    strb r0, [r4] \n\
    ldr r3, _080CFD40  @ =0x00001142 \n\
    add r2, r2, r3 \n\
    add r1, r5, r2 \n\
    ldrb r0, [r1] \n\
    cmp r0, #7 \n\
    bhi _080CFD44 \n\
    mov r0, #8 \n\
    strb r0, [r1] \n\
    mov r0, #5 \n\
    b _080CFD4E \n\
_080CFCFC: \n\
    .4byte 0x00001122 \n\
_080CFD00: \n\
    .4byte gRam \n\
_080CFD04: \n\
    .4byte 0x00000996 \n\
_080CFD08: \n\
    .4byte 0x00000968 \n\
_080CFD0C: \n\
    .4byte 0x000016C5 \n\
_080CFD10: \n\
    .4byte 0x0000096C \n\
_080CFD14: \n\
    .4byte 0x000016C1 \n\
_080CFD18: \n\
    .4byte 0x0000096D \n\
_080CFD1C: \n\
    .4byte 0x00000F62 \n\
_080CFD20: \n\
    .4byte 0x00000961 \n\
_080CFD24: \n\
    .4byte 0x00000965 \n\
_080CFD28: \n\
    .4byte 0x00000F12 \n\
_080CFD2C: \n\
    .4byte 0x00000964 \n\
_080CFD30: \n\
    .4byte 0x00000FB2 \n\
_080CFD34: \n\
    .4byte 0x00000F22 \n\
_080CFD38: \n\
    .4byte 0x00001152 \n\
_080CFD3C: \n\
    .4byte gUnknown_08174A10 \n\
_080CFD40: \n\
    .4byte 0x00001142 \n\
_080CFD44: \n\
    cmp r0, #24 \n\
    bls _080CFD50 \n\
    mov r0, #24 \n\
    strb r0, [r1] \n\
    mov r0, #251 \n\
_080CFD4E: \n\
    strb r0, [r4] \n\
_080CFD50: \n\
    add sp, sp, #4 \n\
    pop {r3-r5} \n\
    mov r8, r3 \n\
    mov r9, r4 \n\
    mov r10, r5 \n\
    pop {r4-r7} \n\
    pop {r0} \n\
    bx r0 \n\
    ");
}
#endif

s8 sub_080CFD60(void)
{
    s8 temp;
    s8 temp3;
    u16 temp2;

    temp = sub_080CA538(0xe3, 0);
    temp3 = temp;

    if (temp == -1)
        return temp;

    gRam.unk10F2[temp3] = gRam.unkA10;

    temp2 = gRam.unk16C4.half;
    temp2 += 8;
    gRam.unkEE2[temp3] = temp2;
    gRam.unkF02[temp3] = temp2 >> 8;

    temp2 = gRam.unk16C0.half;
    temp2 += 16;
    gRam.unkED2[temp3] = temp2;
    gRam.unkEF2[temp3] = temp2 >> 8;

    gRam.unkFB2[temp3] = 0;
    gRam.unk10E2[temp3] = 0x60;

    return temp3;
}

void sub_080CFDFC(u8 r0)
{
    u8 temp;

    temp = GetRandomInt() & 1;
    gRam.unkF62[r0] = temp;

    temp ^= 1;
    gRam.unkFB2[r0] = temp;

    sub_080D09F4(r0);
}

void sub_080CFE3C(u8 r0)
{
    if ((gRam.unk9AD == 2) && (u16)((gRam.unk1AE8 | gRam.unk1AE9 << 8) + 0xFF34) < 2)
    {
        gRam.unk10E2[r0] = 0x28;
    }
}

void sub_080CFE88(u8 r0)
{
    s8 cVar1;
    struct Sprite sp;

    if (gRam.unk1AE2 == 0) {
        cVar1 = sub_080C99F8();
        if (cVar1 > -1) {
            *gUnknown_0817276C[cVar1] = 6;
            sub_080AA724();
            gRam.unkFA2[r0] = 0;
            return;
        }
        sub_080C9564(r0, 0xcd, &sp);
    }
    gRam.unk10E2[r0] = 0x30;
    gRam.unkF52[r0] = 0;
}