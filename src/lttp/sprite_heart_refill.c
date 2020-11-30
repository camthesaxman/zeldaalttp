#include "global.h"

void Sprite_HeartRefill(u8 r0)
{
    s8 temp;
    u8 temp2;
    u8 temp3;

    temp = sub_080C6208(r0);
    if (temp == 0)
    {

        temp = (s8)Sprite3_CheckIfActive(r0);
        if (temp == 0)
        {

            sub_080C4C10(r0);

            temp2 = sub_080D0820(r0);
            if (temp2 == 0)
            {

                Sprite3_Move(r0);
                sub_080C2C4C(r0);

                if (gRam.unk1142[r0] < 0)
                {
                    gRam.unk1142[r0] = 0;
                    gRam.unkF52[r0]++;
                    gRam.unkF92[r0] = 0;
                }

                gRam.unk1122[r0] &= 0xbf;
                if ((s8)gRam.unkF22[r0] > -1)
                    gRam.unk1122[r0] ^= 0x40;

                temp3 = gRam.unkF52[r0];
                if (gRam.unkF52[r0] > 2)
                    temp3 = 3;

                gUnknown_081749F4[temp3](r0);
            }
        }
    }
}

void HeartRefill_InitializeAscent(u8 r0)
{
    gRam.unkF52[r0]++;
    gRam.unkFC2[r0] = 0x12;
    gRam.unk1152[r0] = 0x14;
    gRam.unkF92[r0] = 1;
    gRam.unkFB2[r0] = 0;
}

void HeartRefill_BeginDescending(u8 r0)
{
    if (gRam.unkFC2[r0] != 0)
    {
        gRam.unk1152[r0]--;
    }
    else
    {
        gRam.unkF52[r0]++;
        gRam.unk1152[r0] = 0xfd;
        gRam.unkF22[r0] = 0;
        gRam.unkF12[r0] = 0;
    }
}

void HeartRefill_GlideGroundward(u8 r0)
{
    u8 temp2;

    if (gRam.unkFC2[r0] == 0)
    {
        temp2 = gRam.unkF22[r0] + gUnknown_08174A04[gRam.unkFB2[r0] & 1];
        gRam.unkF22[r0] = temp2;
        if (temp2 == gUnknown_08174A06[gRam.unkFB2[r0] & 1])
        {
            gRam.unkFB2[r0]++;
            gRam.unkFC2[r0] = 8;
        }
    }
}
