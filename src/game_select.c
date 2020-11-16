#include "gba/gba.h"
#include "global.h"

extern void (*gUnknown_08427948[])(void);
extern u8 gUnknown_03005050;

extern struct
{
    u8 unk0;
    u8 filler1[3];
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
} gUnknown_03000BE0;

extern u16 gUnknown_0202A0F0[][160];

void sub_0803074C(void)
{
    u8 i;
    u16 *r3;

    gUnknown_08427948[gUnknown_03005050]();
    if ((gUnknown_03000948.unk0 & 0x1F) == 0)
        gUnknown_030004A0.bgConfig[2].hofs--;
    gUnknown_02016D60.unk10--;
    gUnknown_02016D60.unk11--;
    gUnknown_02016D60.unk12--;
    gUnknown_02016D60.unk13--;
    if ((u8)gUnknown_02016D60.unk10 == 0)
    {
        gUnknown_02016D60.unk10 = 48;
        gUnknown_030004A0.bgConfig[3].hofs--;
    }
    if (gUnknown_02016D60.unk11 == 0)
    {
        gUnknown_02016D60.unk11 = 24;
        gUnknown_03000BE0.unk4--;
    }
    if (gUnknown_02016D60.unk12 == 0)
    {
        gUnknown_02016D60.unk12 = 12;
        gUnknown_03000BE0.unk8--;
    }
    if (gUnknown_02016D60.unk13 == 0)
    {
        gUnknown_02016D60.unk13 = 7;
        gUnknown_03000BE0.unkC--;
    }
    r3 = &gUnknown_0202A0F0[gUnknown_03000204][0];
    for (i = 0; i < gUnknown_03000BE0.unk6; i++)
        *r3++ = gUnknown_030004A0.bgConfig[3].hofs;
    for (; i < gUnknown_03000BE0.unkA; i++)
        *r3++ = gUnknown_03000BE0.unk4;
    for (; i < gUnknown_03000BE0.unkE; i++)
        *r3++ = gUnknown_03000BE0.unk8;
    for (; i < 160; i++)
        *r3++ = gUnknown_03000BE0.unkC;
    gUnknown_03000BC0.src = &gUnknown_0202A0F0[gUnknown_03000204][1];
    if (gUnknown_02016D60.unk14 == 0)
    {
        gUnknown_030004A0.bgConfig[0].hofs = 88 - gUnknown_02016D60.unk20;
        gUnknown_030004A0.bgConfig[0].vofs = 56 - gUnknown_02016D60.unk22;
        gUnknown_030004A0.bgConfig[1].hofs = 88 - gUnknown_02016D60.unk24;
        gUnknown_030004A0.bgConfig[1].vofs = 56 - gUnknown_02016D60.unk26;
    }
    sub_08137AFC();
    sub_08000BAC();
    sub_0800099C();
}

void sub_080308C0(void)
{
    if (gUnknown_02016D60.unk2_0 == 0 && gUnknown_02016D60.unk2_4 == 0 && gUnknown_02016D60.unk2_6 == 0)
        gUnknown_03000520.unkC = 0x0F0007E0;
    else
        gUnknown_03000520.unkC = 0xF000F100;
    gUnknown_03000520.unk7 = 0;
    sub_0800C1EC(64);
}

struct Weird
{
    u8 filler0[4];
    u8 unk4;
    u8 filler5[1];
    u8 unk6;
};

#define unk3000000 (*(struct Weird *)0x03000000)

extern struct
{
    u8 filler0[0x25];
    u8 unk25;
    u8 filler26[0x40-0x26];
} gUnknown_0200B250[];

extern u8 gUnknown_0813D838[];

void sub_080308F8(void)
{
    if (gUnknown_03000520.unk0 == 0)
    {
        sub_0800BED8();
        *(u16 *)PLTT = 0x6739;
        gUnknown_020163D0[0] = 0x6739;
        sub_080123BC();
        sub_0801239C();
        sub_0800C4E8();
        sub_08011418(unk3000000.unk4);
        sub_080681D0(&gUnknown_0200B250[unk3000000.unk4]);
        sub_0800B85C(gUnknown_0200B250[unk3000000.unk4].unk25);
        sub_0800B890(22);
        sub_0800BA44(28);
        gUnknown_030004A0.dispCnt = 0x1F40;
        gUnknown_030004A0.bgConfig[0].bgcnt = 0x1A40;
        gUnknown_030004A0.bgConfig[1].bgcnt = 0x1B41;
        gUnknown_030004A0.bgConfig[2].bgcnt = 0x5C46;
        gUnknown_030004A0.bgConfig[3].bgcnt = 0x5E47;
        gUnknown_02016D60.unk20 = 64;
        gUnknown_02016D60.unk22 = 24;
        gUnknown_02016D60.unk24 = 176;
        gUnknown_02016D60.unk26 = 136;
        gUnknown_030004A0.bldcnt = 0x3F42;
        gUnknown_030004A0.bldalpha = 0x0C04;
        gUnknown_02016D60.unk8 = sub_0804C8A8(2, 0, 0);
        gUnknown_02016D60.unkC = sub_0804C8A8(2, 1, 0);
        sub_0804C808(gUnknown_0813D838);
        gUnknown_03000BC0.unk0 = 1;
        gUnknown_03000BC0.dest = 0x0400001C;
        gUnknown_03000BC0.dmaCnt = 0xA2600001;
        gUnknown_03000BE0.unk0 = 1;
        gUnknown_02016D60.unk10 = 48;
        gUnknown_02016D60.unk11 = 24;
        gUnknown_02016D60.unk12 = 12;
        gUnknown_02016D60.unk13 = 7;
        gUnknown_03000BE0.unk6 = 80;
        gUnknown_03000BE0.unkA = 112;
        gUnknown_03000BE0.unkE = 128;
#ifdef NONMATCHING
        gUnknown_02016D60.unk2_0 = 0;
        gUnknown_02016D60.unk2_4 = 0;
        gUnknown_02016D60.unk2_6 = 0;
#else
        *((u8 *)&gUnknown_02016D60 + 2) = 0;
#endif
        gUnknown_02016D60.unk4 = 14;
        gUnknown_02016D60.unk14 = 0;
        gUnknown_03000520.unkC = -1;
        sub_0800C0B0(2, 8);
        gUnknown_03005050++;
    }
}

void sub_08030A40(void)
{
    switch (gSubState)
    {
    case 0:
        gUnknown_02016D60.unk20 += 8;
        gUnknown_02016D60.unk24 -= 8;
        gUnknown_02016D60.unk4--;
        if (gUnknown_02016D60.unk4 == 0)
        {
            gUnknown_02016D60.unk4 = 7;
            gSubState++;
        }
        break;
    case 1:
        gUnknown_02016D60.unk20 -= 8;
        gUnknown_02016D60.unk22 += 8;
        gUnknown_02016D60.unk24 += 8;
        gUnknown_02016D60.unk26 -= 8;
        gUnknown_02016D60.unk4--;
        if (gUnknown_02016D60.unk4 == 0)
        {
            gUnknown_03005050 += 3;
            gSubState = 0;
            gUnknown_02016D60.unk20 = 104;
            gUnknown_02016D60.unk22 = 72;
            gUnknown_02016D60.unk24 = 136;
            gUnknown_02016D60.unk26 = 104;
            sub_0800D24C(0x020A);
            sub_0800D24C(0x800B0190);
            sub_0800C0B0(2, 8);
        }
        break;
    }
}
