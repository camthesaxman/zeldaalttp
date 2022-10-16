#include "global.h"

void sub_080D10E4(u8 r0)
{
    u8 temp;

    sub_080D161C(r0);
    gRam.unkF62[r0] = gRam.unk964.b.hi | gRam.unk961;
    temp = Sprite3_CheckIfActive(r0);
    if (temp == 0)
    {
        sub_080D1404(r0);
        sub_080C5080(r0);
        if (sub_0809E3CC() == 0)
        {
            temp = GetRandomInt();
            if (temp == 0)
            {
                gRam.unkF92[r0] = 1;
                gRam.unkFC2[r0] = 0x14;
            }
            if (gRam.unkFC2[r0] == 0)
            {
                gRam.unkF92[r0] = 0;
            }
            gUnknown_08174A58[gRam.unkF52[r0]](r0);
        }
    }
}

void sub_080D1198(u8 r0)
{
    struct Sprite sp;

    if ((gRam.unkF62[r0] != 0) || (u8)gRam.unk1062[r0] == 0)
    {
        if ((gRam.unk1662 & 2) != 0)
        {
            sub_080C9164(r0, 0xd7, &sp);
        }
        else
        {
            u8 temp = sub_080C9164(r0, 0xd4, &sp);
            if (temp != 0)
            {
                gRam.unkF52[r0]++;
            }
        }
    }
    else
    {
        gRam.unkF52[r0] = 3;
    }
}

void sub_080D1220(u8 r0)
{
    struct Sprite sp;
    s32 temp;

    if (gRam.unk1AE2 != 0)
    {
        sub_080C9564(r0, 0xd6, &sp);
        gRam.unkF52[r0] = 0;
    }
    else
    {
        temp = sub_080AA868();
        if (temp < 100)
        {
            sub_080C9564(r0, 0xd6, &sp);
            gRam.unkF52[r0] = 0;
        }
        else
        {
            sub_080C9564(r0, 0xd5, &sp);
            gRam.unkF52[r0]++;
        }
    }
}

void sub_080D129C(u8 r0)
{
    struct Sprite sp;

    if (gRam.unk1062[r0] < 0)
    {
        sub_080C9564(r0, 0xd9, &sp);
        gRam.unkF52[r0]++;
    }
    else
    {
        sub_080C9564(r0, 0xd8, &sp);
        gRam.unkF52[r0]++;
    }
}

void sub_080D12E8(u8 r0)
{
    u8 temp = gRam.unk1062[r0];

    if ((s8)temp < 0)
    {
        gRam.unkFA2[temp & 0xf] = 0;
        sub_080D14F0(r0);
        gRam.unk1062[r0] = 0;
        gRam.unkF52[r0] = 0;
    }
    else
    {
        gRam.unkFA2[temp - 1] = 0;
        sub_080D134C(r0);
        gRam.unk1062[r0] = 0;
        gRam.unkF52[r0] = 0;
    }
}

void sub_080D134C(u8 r0)
{
    s8 i;

    sub_080CF140(r0, 0xb);

    for (i = 4; i >= 0; i--)
    {
        u8 temp = sub_080CA538(0xdb, r0);
        if ((s8)temp >= 0)
        {
            sub_080CAE50(temp);
            gRam.unkEE2[temp] = gRam.unk960 + 4;
            gRam.unkD74[temp] = 0xff;
            gRam.unkF22[temp] = gUnknown_08174A8C[i];
            gRam.unkF12[temp] = gUnknown_08174A91[i];
            gRam.unk1152[temp] = 0x20;
            gRam.unk10E2[temp] = 0x20;
        }
    }
}

void sub_080D1404(u8 r0)
{
    s8 i;

    for (i = 0xf; i >= 0; i--)
    {
        if (gRam.unkFA2[i] != 0 && gRam.unkFF2[i] == 0xd2)
        {
            u8 temp;

            gRam.unk960 = gRam.unkEE2[r0];
            gRam.unk970 = gRam.unkF02[r0];
            gRam.unk964.b.lo = 0x10;

            gRam.unk961 = gRam.unkED2[r0];
            gRam.unk971 = gRam.unkEF2[r0];
            gRam.unk964.b.hi = 0x10;

            sub_080C4574(i);

            temp = sub_080C466C();

            if (temp != 0)
                gRam.unk1062[r0] = i | 0x80;

            break;
        }
    }
}

void sub_080D14F0(u8 r0)
{
    s8 i;

    sub_080CF140(r0, 0xb);

    for (i = 4; i >= 0; i--)
    {
        u8 temp = sub_080CA538(gUnknown_08174A96[i], r0);

        if ((s8)temp >= 0)
        {
            sub_080CAE50(temp);

            gRam.unkEE2[temp] = gRam.unk960 + 4;
            gRam.unkD74[temp] = 0xff;

            gRam.unkF22[temp] = gUnknown_08174A8C[i];
            gRam.unkF12[temp] = gUnknown_08174A91[i];

            gRam.unk1152[temp] = 0x20;
            gRam.unk10E2[temp] = 0x20;
        }
    }
}

void sub_080D15B0(u8 r0)
{
    sub_080D10E4(r0);
}

void sub_080D15C0(u8 r0)
{
    sub_080D10E4(r0);
}

void sub_080D15D0(u8 r0)
{
    gRam.unk1776 = 0;
    sub_080A1588(0x16);
    gRam.unk1662 |= 2;
    sub_080AA83C(-100);
    gRam.unkF52[r0] = 0;
}

void sub_080D161C(u8 r0)
{
    gRam.unk96C.b.lo = 2;
    gRam.unk96C.b.hi = 0;
    sub_080C94D0(r0, &gUnknown_08174A6C[gRam.unkF92[r0] * 0x10]);
    sub_080C6230(r0);
}
