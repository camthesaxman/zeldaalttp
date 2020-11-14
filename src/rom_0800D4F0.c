#include "gba/gba.h"
#include "global.h"

struct Struct0201ED90
{
    u8 unk0;
    u8 filler1[1];
    u8 unk2_0:4;
    u8 unk2_4:2;
    u8 filler3[1];
    u16 unk4;
    u16 unk6;
    // size = 24?
};


extern struct Struct0201ED90 gUnknown_02016D60;
extern u8 gUnknown_03000520;

extern struct Struct0201ED90 gUnknown_02000010;
extern struct Struct0201ED90 gUnknown_0201ED90;
extern struct Struct0201ED90 gUnknown_08137D44;

void sub_0800D4F0(void)
{
    switch (gUnknown_03000BFC)
    {
    case 0:
        sub_0800BED8();
        gUnknown_030004A0.dispCnt = 0x100;
        gUnknown_030004A0.bgConfig[0].bgcnt = 0x1C00;
        sub_0800BA44(4);
        sub_0800B890(gUnknown_0202A8C0 == 0 ? 3 : 40);
        sub_0800B980(0, 0x7FFF);
        zero_memory(&gUnknown_02016D60, 40);
        gUnknown_02016D60.unk4 = 60;
        sub_0800C0B0(2, 8);
        gUnknown_03000BFC++;
        break;
    case 1:
        sub_0800C41C();
        if (sub_0800D610() != 0)
            sub_0800C0B0(1, 8);
        break;
    case 2:
        if (gUnknown_03000520 == 0)
        {
            sub_0800BA44(7);
            sub_0800B890(7);
            gUnknown_030004A0.dispCnt = 0x300;
            gUnknown_030004A0.bgConfig[0].bgcnt = 0x1C00;
            gUnknown_030004A0.bgConfig[1].bgcnt = 0x1D05;
            sub_0800C0B0(0, 8);
            gUnknown_02016D60.unk4 = 120;
            gUnknown_03000BFC++;
        }
        break;
    case 3:
        if (sub_0800D610() != 0)
            sub_0800C0B0(3, 8);
        break;
    case 4:
        if (gUnknown_03000520 == 0)
            sub_0800B5EC(8);
        break;
    }
}

int sub_0800D610(void)
{
    if (gUnknown_03000520 != 0 || --gUnknown_02016D60.unk4 != 0)
        return 0;
    gUnknown_03000BFC++;
    return 1;
}

void sub_0800D644(void)
{
    if (gUnknown_02000010.unk0 & 0x7F)
        gUnknown_02000010.unk0 = 135;
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
        gUnknown_0201ED90.unk0 = 1;
        gUnknown_0201ED90.unk6 = a;
        gUnknown_0201ED90.unk2_0 = 3;
        gUnknown_0201ED90.unk2_4 = (a & 0x7FFF) >> 8;
    }
}

struct Struct0202A5E0
{
    u8 unk0;
    u8 filler1[1];
    u8 unk2_0:4;
    u8 unk2_4:2;
    u8 filler3[1];
    u8 unk4;
    u8 filler5[1];
    u16 unk6;
    u8 filler8[0x18-0x8];
    u8 unk18;
    u8 unk19;
    u8 filler1A[1];
    u8 unk1B;
    u8 filler1C[0x24-0x1C];
    void *unk24;
    u8 filler28[0x5A-0x28];
    u8 unk5A;
    u8 filler5B[0x60-0x5B];
    void *unk60;
    u8 filler64[0xD8-0x64];
    u8 fillerD8[0xF8-0xD8];
    u8 unkF8;
    u8 fillerF9[1];
    u8 unkFA;
    u8 fillerFB[0x108-0xFB];
    u8 unk108;
    u8 filler109[0x10B-0x109];
    u8 unk10B;
    // size = 272 (0x110)?
};

static_assert(offsetof(struct Struct0202A5E0, unkF8) == 0xF8);

extern struct Struct0202A5E0 gUnknown_0202A5E0;
extern struct Struct0202A5E0 gTextbox;

struct Struct020309C0
{
    u8 unk0;
    u8 filler1[7];
    u8 unk8;
};

extern u8 gUnknown_02000000[];
extern struct Struct020309C0 gUnknown_020309C0;
extern u8 gUnknown_02030990[];
extern u8 gUnknown_0202E154;
extern u8 gUnknown_0202E155;
extern u8 gUnknown_020309B0[];
extern u8 gUnknown_020309A0[];

void sub_0800D6F4(void)
{
    zero_memory(&gUnknown_02000010, 24);
    zero_memory(&gTextbox, 272);
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

extern int (*gUnknown_084273D4[])();
extern int (*gUnknown_084273EC[])();
extern u8 gUnknown_0202A6D8;

void sub_0800D788(void)
{
    if (gUnknown_0201ED90.unk0 == 1)
    {
        gUnknown_0201ED90.unk0 = 0;
        gUnknown_0202A5E0.unkF8 = 1;
    }

    switch (gUnknown_02000010.unk0)
    {
    case 1:
        gTextbox.unk108 = 0;
        gTextbox.unkF8 = 1;
        gUnknown_0202E154 = (gUnknown_0202E154 + 1) | ~0x7F;
        break;
    case 135:
        if (gTextbox.unk0 <= 1)
            gTextbox.unkF8 = 5;
        else if (gTextbox.unk0 <= 6)
            gTextbox.unkF8 = 4;
        break;
    }

    while (gUnknown_084273EC[gUnknown_0202A6D8]())
        ;

    if (gTextbox.unkFA != 0)
        gTextbox.unkFA--;
    else
    {
        if (gTextbox.unk108 != 0)
        {
            gTextbox.unk108 = 0;
            sub_0800E3B0(2);
        }
        else
        {
            while (gUnknown_084273D4[gTextbox.unkF8]())
                ;
        }
    }

    sub_0800E430();
    sub_0800E570();
    sub_0800E78C();
}

void sub_0800D87C(void)
{
    gTextbox.unk10B = 0;
}

int sub_0800D890(void)
{
    return 0;
}

extern u8 gUnknown_0201EF00[];
extern u8 gUnknown_02002490[];

struct Weird
{
    u8 filler0[6];
    u8 unk6;
};

extern void sub_0800EB50(void *, u8);

int sub_0800D894(void)
{
    struct Struct0202A5E0 *r4 = &gTextbox;

    zero_memory(&gUnknown_020309C0, 16);
    zero_memory(gUnknown_0201EF00, 20);
    zero_memory(r4, 272);
    CpuCopy32(&gUnknown_02000010, r4, 24);
    r4->unk19 = r4->unk4 >> 7;
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
