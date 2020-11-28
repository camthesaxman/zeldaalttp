#include "global.h"

void sub_080CFF08(u8 r0)
{
    u8 temp;

    sub_080C9704(r0);
    if (gRam.unkFF2[r0] == 0xe6)
    {
        gRam.unkF92[r0] = gRam.unk1002[r0] - 1;

        gRam.unk1122[r0] = gUnknown_08174A14[gRam.unkF92[r0]];
        if (gRam.unk1002[r0] == 1)
        {
            gRam.unk1032[r0] = 0xf0;
        }
    }

    temp = sub_080C6208(r0);
    if (temp == 0)
    {
        if (gRam.unkFF2[r0] == 0xe6)
        {
            if (gRam.unk1002[r0] == 1)
            {
                temp = 2;
            }
            else
            {
                temp = 1;
            }
            sub_080C6174(temp, 0x200);
        }
        sub_080D0664(r0);
    }
}

void sub_080CFFAC() {}

void sub_080CFFB0(u8 r0)
{
    sub_080C35A4(r0);
    gRam.unk1002[r0] = 0xff;
    sub_080CFFE0(r0);
}

void sub_080CFFE0(u8 r0)
{
    sub_0812FBC4(0x22);
    sub_080D0020(r0);
}

void sub_080CFFFC(u8 r0)
{
    gRam.unk1002[r0] = 0xff;
    sub_080D0020(r0);
}

void sub_080D0020(u8 r0)
{
    gRam.unkE85[r0] = gRam.unkDB7;
    gRam.unkDB7++;
}

void sub_080D0048(u8 r0)
{
    u8 temp = gUnknown_08174A18[gRam.unkE85[r0]];

    if ((temp & (gRam.unkAA8 >> 8)) != 0)
    {
        gRam.unkFA2[r0] = 0;
    }
    else
    {
        sub_080C9704(r0);
        temp = sub_080C5614(r0);
        if ((temp) == 0)
        {
            sub_080D0664(r0);
        }
    }
}
