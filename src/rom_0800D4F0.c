#include "gba/gba.h"
#include "global.h"

extern struct
{
    //u16 unk0;
    u8 filler0[4];
    u16 unk4;
} gUnknown_02016D60;
extern u8 gUnknown_03000520;

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
        sub_0800B850(&gUnknown_02016D60, 40);
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

extern u8 gUnknown_02000010;

void sub_0800D644(void)
{
    if (gUnknown_02000010 & 0x7F)
        gUnknown_02000010 = 135;
}

