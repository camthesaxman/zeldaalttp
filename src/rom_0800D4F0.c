#include "gba/gba.h"
#include "global.h"

void splash_screen_main(void)
{
    switch (gSubState)
    {
    case 0:  // fade in?
        sub_0800BED8();
        gUnknown_030004A0.dispCnt = 0x100;
        gUnknown_030004A0.bgConfig[0].bgcnt = 0x1C00;
        sub_0800BA44(4);
        sub_0800B890(gUnknown_0202A8C0 == 0 ? 3 : 40);
        sub_0800B980(0, 0x7FFF);
        zero_memory(&gUnknown_02016D60, 40);
        gUnknown_02016D60.unk4 = 60;
        sub_0800C0B0(2, 8);
        gSubState++;
        break;
    case 1:
        sub_0800C41C();
        if (sub_0800D610() != 0)
            sub_0800C0B0(1, 8);
        break;
    case 2:
        if (gUnknown_03000520.unk0 == 0)
        {
            sub_0800BA44(7);
            sub_0800B890(7);
            gUnknown_030004A0.dispCnt = 0x300;
            gUnknown_030004A0.bgConfig[0].bgcnt = 0x1C00;
            gUnknown_030004A0.bgConfig[1].bgcnt = 0x1D05;
            sub_0800C0B0(0, 8);
            gUnknown_02016D60.unk4 = 120;
            gSubState++;
        }
        break;
    case 3:  // showing title screen
        if (sub_0800D610() != 0)
            sub_0800C0B0(3, 8);
        break;
    case 4:
        if (gUnknown_03000520.unk0 == 0)
            set_main_state(8);
        break;
    }
}

int sub_0800D610(void)
{
    if (gUnknown_03000520.unk0 != 0 || --gUnknown_02016D60.unk4 != 0)
        return 0;
    gSubState++;
    return 1;
}

void sub_0800D644(void)
{
    if (gUnknown_02000010.unk0.asBitfield.unk0 & 0x7F)
        gUnknown_02000010.unk0.asBitfield.unk0 = 135;
}

void sub_0800D65C(void)
{
    if (gUnknown_0201ED90.unk6 & 0x8000)
        gUnknown_0201ED90.unk6 &= 0x7FFF;
}

void sub_0800D67C(u16 a)
{
    CpuCopy32(&gUnknown_08137D44, &gUnknown_02000010, 24);
    gUnknown_02000010.unk6 = a;
}

void sub_0800D6A4(u16 a)
{
    if ((gUnknown_0201ED90.unk6 & 0x8000) == 0)
    {
        zero_memory(&gUnknown_0201ED90, 24);
        gUnknown_0201ED90.unk0.asBitfield.unk0 = 1;
        gUnknown_0201ED90.unk6 = a;
        gUnknown_0201ED90.unk0.asBitfield.unk2_0 = 3;
        gUnknown_0201ED90.unk0.asBitfield.unk2_4 = (a & 0x7FFF) >> 8;
    }
}

void sub_0800D6F4(void)
{
    zero_memory(&gUnknown_02000010, 24);
    zero_memory(&gUnknown_0201EDF0, 272);
    zero_memory(&gUnknown_020309C0, 16);
    zero_memory(gUnknown_02030990, 16);
    zero_memory(gUnknown_02000000, 4);
    gUnknown_0202E154 = 0;
}

void sub_0800D744(void)
{
    zero_memory(&gUnknown_0201ED90, 24);
    zero_memory(&gUnknown_0202A5E0, 272);
    zero_memory(gUnknown_020309B0, 16);
    zero_memory(gUnknown_020309A0, 16);
    gUnknown_0202E155 = 0;
}

void sub_0800D788(void)
{
    if (gUnknown_0201ED90.unk0.asBitfield.unk0 == 1)
    {
        gUnknown_0201ED90.unk0.asBitfield.unk0 = 0;
        gUnknown_0202A5E0.unkF8 = 1;
    }

    switch (gUnknown_02000010.unk0.asBitfield.unk0)
    {
    case 1:
        gUnknown_0201EDF0.unk108 = 0;
        gUnknown_0201EDF0.unkF8 = 1;
        gUnknown_0202E154 = (gUnknown_0202E154 + 1) | ~0x7F;
        break;
    case 135:
        if (gUnknown_0201EDF0.unk0 <= 1)
            gUnknown_0201EDF0.unkF8 = 5;
        else if (gUnknown_0201EDF0.unk0 <= 6)
            gUnknown_0201EDF0.unkF8 = 4;
        break;
    }

    while (gUnknown_084273EC[gUnknown_0202A6D8]())
        ;

    if (gUnknown_0201EDF0.unkFA != 0)
        gUnknown_0201EDF0.unkFA--;
    else
    {
        if (gUnknown_0201EDF0.unk108 != 0)
        {
            gUnknown_0201EDF0.unk108 = 0;
            sub_0800E3B0(2);
        }
        else
        {
            while (gUnknown_084273D4[gUnknown_0201EDF0.unkF8]())
                ;
        }
    }

    sub_0800E430();
    sub_0800E570();
    sub_0800E78C();
}

void sub_0800D87C(void)
{
    gUnknown_0201EDF0.unk10B = 0;
}

int sub_0800D890(void)
{
    return 0;
}

struct Weird
{
    u8 filler0[6];
    u8 unk6;
};

extern void sub_0800EB50(void *, u8);

int sub_0800D894(void)
{
    struct Struct0202A5E0 *r4 = &gUnknown_0201EDF0;

    zero_memory(&gUnknown_020309C0, 16);
    zero_memory(gUnknown_0201EF00, 20);
    zero_memory(r4, 272);
    CpuCopy32(&gUnknown_02000010, r4, 24);
    r4->unk19 = r4->unk4_7;
    if ((r4->unk2_0) == 3)
        r4->unk2_0 = (*(struct Weird *)0x03000000).unk6;
    sub_0800ED7C(&r4->unk18, r4->unk6);
    sub_0800EBD4(r4);
    gUnknown_020309C0.unk8 = gUnknown_0202E154;
    gUnknown_020309C0.unk0 = gUnknown_0202E154;
    r4->unk60 = gUnknown_02002490;
    r4->unk5A = 208;
    sub_0800DFC4(r4, 113);
    r4->unk1B = 1;
    r4->unk24 = r4->fillerD8;
    r4->unkF8 = 2;
    sub_0800EB50(r4, r4->unk2_4);
    sub_0800E69C(1);
    return 1;
}

int sub_0800D958(void)
{
    struct Struct0202A5E0 *r5 = &gUnknown_0202A5E0;

    zero_memory(gUnknown_020309B0, 16);
    zero_memory(r5, 272);
    CpuCopy32(&gUnknown_0201ED90, r5, 24);
    if (r5->unk2_0 == 3)
        r5->unk2_0 = (*(struct Weird *)0x03000000).unk6;
    r5->unk6 &= 0x7FFF;
    sub_0800ED7C(&r5->unk18, r5->unk6);
    CpuFastFill(-1, gUnknown_02002B90, 0x500);
    sub_0800EB08(2);
    sub_0800D24C(121);
    sub_0800EBD4(r5);
    r5->unk4_0 = 20;
    r5->unk60 = gUnknown_02002B90;
    r5->unk5A = 160;
    sub_0800DFC4(r5, 113);
    r5->unk1B = 2;
    r5->unk24 = r5->fillerD8;
    r5->unkF8 = 2;
    sub_0800EB50(r5, r5->unk2_4);
    return 0;
}

int sub_0800DA30(void)
{
    struct Struct0202A5E0 *r4 = &gUnknown_0201EDF0;

    if (r4->unk10B != 1)
    {
        r4->unk10B = 1;
        sub_0800D24C(67);
    }
    sub_0800E69C(2);
    if (sub_0800E6B0(1) != 0)
        r4->unkF8 = 3;
    return 0;
}

int sub_0800DA70(void)
{
    if (sub_0800E4EC(-1) != 0)
        gUnknown_0202A5E0.unkF8 = 3;
    return 0;
}

int sub_0800DA90(void)
{
    if (gUnknown_0201EDF0.unk10B != 3)
    {
        gUnknown_0201EDF0.unk10B = 3;
        gUnknown_0201EDF0.unkD7 = 0;
        gUnknown_0201EDF0.unkD6 = 0;
        gUnknown_0201EDF0.unkD5 = 0;
        gUnknown_0201EDF0.unkD4 = 0;
        sub_0800D24C(68);
    }
    sub_0800E69C(7);
    if (sub_0800E6B0(-1) != 0)
        gUnknown_0201EDF0.unkF8 = 5;
    return 0;
}

int sub_0800DAE8(void)
{
    if (sub_0800E4EC(1) != 0)
        gUnknown_0202A5E0.unkF8 = 5;
    return 0;
}

int sub_0800DB08(void)
{
    sub_0800E69C(0);
    gUnknown_0201EDF0.unk10B = 4;
    gUnknown_0201EDF0.unkF8 = 0;
    return 0;
}

int sub_0800DB30(void)
{
    sub_0800E4EC(0);
    gUnknown_0202A5E0.unkF8 = 0;
    gUnknown_0201ED90.unk0.asBitfield.unk0 = 0;
    gUnknown_0202A5E0.unk0 = 0;
    return 0;
}

int sub_0800DB54(void)
{
    return 0;
}

int sub_0800DB58(void)
{
    gUnknown_08427408[gUnknown_0202A5E0.unkF9](&gUnknown_0202A5E0);
    sub_0800E4EC(0);
    return 0;
}

int sub_0800DB84(void)
{
    sub_0800E69C(3);
    gUnknown_0201EDF0.unk10B = 2;
    gUnknown_08427408[gUnknown_0201EDF0.unkF9](&gUnknown_0201EDF0);
    sub_0800E6B0(0);
    return 0;
}

void sub_0800DBC0(struct Struct0202A5E0 *a)
{
    if (a->unk1B != 2)
        sub_0800E3B0(0);
    a->unkF9 = 1;
}

extern u16 sub_0800DCDC();

void sub_0800DBE0(struct Struct0202A5E0 *a)
{
    int r2;
    s16 r5;
    u16 r6;

    if (a->unk105 != 0)
    {
        a->unk105--;
        return;
    }
    if (a->unk106 != 0)
        a->unk106--;

    if (a->unk1B != 2)
    {
        int r1;

        if ((gUnknown_03000940[gUnknown_03000414] & 2) != 0)
            r1 = 5;
        else
            r1 = 1;
        r2 = r1;
    }
    else
        r2 = 2;

    a->unk102 -= r2;
    if (a->unk102 > 0)
        return;

    r5 = 0;
    while (a->unk102 <= 0)
    {
        r5++;
        a->unk102 += gUnknown_08137D5C[a->unk2_0];
    }

    r6 = 0;
    do
    {
        u16 r1 = sub_0800DCDC(a);

        if (r1 == 0 || a->unk105 != 0 || a->unkFA != 0)
            break;
        r6 += r1;
        r5--;
    }
    while (r5 > 0);

    if (r6 == 0)
        return;

    if (a->unk1B != 2)
        sub_0800EB08(a->unk109);
    else
        sub_0800EB08(2);
}

