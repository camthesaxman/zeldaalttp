#include "gba/gba.h"
#include "global.h"

#include "sounds.h"

void (*const gUnknown_0842748C[])(void) =
{
    sub_0800F9AC,
    sub_0800FDB0,
    sub_0800FDB4,
    sub_080103F8,
    sub_08010628,
    sub_08010834,
    sub_0800FAB4,
    sub_0800F868,
};

struct Struct0201ED90_alt
{
	u8 filler0[4];
	u16 unk4;
	u8 filler6[0xC-0x6];
	u8 *unkC;
	u8 filler10[0x15-0x10];
	u8 unk15;
	u8 filler16[1];
	u8 unk17;
	u8 unk18;
	u8 unk19;
	u8 filler1A[1];
	u8 unk1B;
	u8 filler1C[1];
	u8 unk1D;
	u8 unk1E;
	u8 unk1F;
	u8 unk20;
	s8 unk21;
	u8 filler22[0x27-0x22];
	u8 unk27;
};

// same address as gUnknown_02016D60, but fields have different types
extern struct Struct0201ED90_alt gUnknown_02016D60_alt;

void sub_0800F808(void)
{
	gUnknown_0842748C[gUnknown_03005050]();
	sub_0800F8B0();
	if (unk3000000.unk7 != gUnknown_02016D60_alt.unk27)
	{
		unk3000000.unk7 = gUnknown_02016D60_alt.unk27;
		sub_0800B85C(gUnknown_02016D60_alt.unk27);
		sub_0800B8D4(gUnknown_02016D60_alt.unkC, 0, 32);
	}
	gUnknown_02016D60_alt.unk1B = 0;
	gUnknown_02016D60_alt.unk1D = 0;
	if (gUnknown_02016D60_alt.unk15 == 0)
	{
		sub_08137AFC();
		sub_08000BAC();
	}
}

void sub_0800F868(void)
{
	if (gUnknown_03000520.unk0 == 0)
	{
		sub_0800F97C(0);
		set_main_state(6);
	}
}

void sub_0800F888(u32 a)
{
	gUnknown_02016D60_alt.unk27 = (a < 3) ? gUnknown_0200B250[a].unk25 : 1;
}

extern u16 gUnknown_084274AC[];

extern u32 sub_0800099C(void);

void sub_0800F8B0(void)
{
	u8 *r4;

	if (gUnknown_02016D60_alt.unk17 == 255)
		return;
	if (gUnknown_02016D60_alt.unk17 != 0)
		gUnknown_02016D60_alt.unk17--;
	else
	{
		gUnknown_02016D60_alt.unk19--;
		if (gUnknown_02016D60_alt.unk19 == 0)
		{
			gUnknown_02016D60_alt.unk19 = 8;
			r4 = gUnknown_03000030 + gUnknown_084274AC[gUnknown_02016D60_alt.unk18++];
			if (((uintptr_t)r4 & 1) != 0)
			{
				gUnknown_02016D60_alt.unk18 = 0;
				gUnknown_02016D60_alt.unk17 = 16 + ((sub_0800099C() & 7) * 32);
			}
			else
			{
				CpuFastCopy(r4 + 0x1880, gUnknown_02016D60_alt.unkC + 480, 32);
				CpuFastCopy(r4 + 0x1780, gUnknown_02016D60_alt.unkC + 448, 32);
				CpuFastCopy(r4 + 0x1680, gUnknown_02016D60_alt.unkC + 416, 32);
				CpuFastCopy(r4 + 0x1580, gUnknown_02016D60_alt.unkC + 384, 32);
				sub_0800B8D4(gUnknown_02016D60_alt.unkC + 384, 12, 4);
			}
		}
	}
}

void sub_0800F97C(int a)
{
	sub_0800BED8();
	sub_0801239C();
	sub_080123BC();
	gUnknown_030004A0.dispCnt = a | 0x40;
	gUnknown_030004A0.bgConfig[3].bgcnt = 0x1E0B;
	gUnknown_030004A0.bgConfig[3].vofs = 96;
}

void sub_0800F9AC(void)
{
	sub_0800F97C(0);
	sub_0800F888(-1);
	sub_0800B85C(1);
	sub_0800BA44(21);
	sub_0800B890(16);
	sub_0800B890(17);
	play_sound(SOUND_BGM_FILE_SELECT);
	sub_0800C0B0(2, 8);
	do
	{
		sub_0800BEC4();
		gUnknown_02016D60_alt.unkC = sub_0800BD14(0x400);
	}
	while (gUnknown_02016D60_alt.unkC == 0);
	CpuFastCopy(gPaletteBuf2, gUnknown_02016D60_alt.unkC, 1024);
	sub_08011324();
	sub_08010DD8();
	sub_0800FA44(0);
	sub_0800FA44(128);
	unk3000000.unk4 = 0;
	gUnknown_02016D60_alt.unk18 = 0;
	gUnknown_02016D60_alt.unk19 = 60;
	gUnknown_02016D60_alt.unk17 = 60;
	gUnknown_03005050 = 2;
}

struct Struct0800EEA8
{
	u8 filler0[2];
	u8 unk2;
	u8 unk3;
	u8 filler4[4];
	void *unk8;
};

struct Struct0800EEA8 *sub_0800EEA8(void);

void sub_0800FA44(u16 a)
{
	struct Struct0800EEA8 *r5 = sub_0800EEA8();
	s16 r6;

	if (r5 != NULL)
	{
		r5->unk8 = gUnknown_02002490;
		r5->unk2 = 128;
		
		for (r6 = 128, a+= 256; r6 > 0; r6--)
		{
			sub_0800EF14(r5, sub_0800EE50(a));
			CpuFastCopy(gUnknown_02002490, (u8 *)VRAM + 0x4000 + ((u8)a * 64), 64);
			a++;
			r5->unk3 = 0;
		}
		sub_0800EEE0(r5);
	}
}

extern void (*gUnknown_084274CC[])(void);

void sub_0800FAB4(void)
{
	gUnknown_084274CC[gSubState]();
}

void sub_0800FAD4(void)
{
	struct Struct0200B250 *r4;
	u8 r1;
	u32 r0;

	sub_0800F97C(0);
	r4 = &gUnknown_0200B250[unk3000000.unk4];
	sub_0800B85C(r4->unk25);
	sub_080681D0(r4);
	r0 = sub_08010E04(unk3000000.unk4);
	gUnknown_02016D60_alt.unk20 = r0;
	r1 = gUnknown_02016D60_alt.unk1F = r4->unk0 & 0xF0;
	asm(""::"r"(r1 ^ r0));
	// This is hard to match. Compiler wants to use `bic` here instead  of `eor`/`and`.
	gUnknown_02016D60_alt.unk1E = (r1 ^ r0) & r0;
	if (gUnknown_02016D60_alt.unk1E == 0)
	{
		gUnknown_03005050 = 7;
		gSubState = 0;
	}
	else
	{
		gUnknown_02016D60_alt.unk21 = 3;
		gSubState = 1;
		CpuFastFill(0, (void *)VRAM, 0x20);
		CpuFastFill(0, (void *)(VRAM + 0xE000), 0x800);
		sub_0800BA44(5);
		sub_0800B890(12);
		gPaletteBuf2[0] = gPaletteBuf2[15];
		sub_0800C0B0(2, 8);
	}
}

extern u16 gUnknown_08137EB4[];
extern u8 gUnknown_08137E9C[];

void sub_0800FB9C(void)
{
	if (gUnknown_03000520.unk0 != 0)
		return;
	if (gUnknown_02016D60_alt.unk21 >= 0)
	{
		while (((gUnknown_02016D60_alt.unk1E >> (u8)gUnknown_02016D60_alt.unk21) & 0x10) == 0)
		{
			gUnknown_02016D60_alt.unk21--;
			if (gUnknown_02016D60_alt.unk21 < 0)
				break;
		}
	}
	if (gUnknown_02016D60_alt.unk21 < 0)
	{
		gUnknown_0200B250[unk3000000.unk4].unk0 |= gUnknown_02016D60_alt.unk20;
		sub_08011434(unk3000000.unk4);
		gUnknown_03005050 = 7;
		gSubState = 0;
		sub_0800C0B0(3, 8);
	}
	else
	{
		gUnknown_030004A0.dispCnt |= 0x100;
		gUnknown_030004A0.bgConfig[0].bgcnt = 0x1C00;
		gUnknown_02016D60_alt.unk4 = 300;
		gSubState = 2;
		CpuFastFill(0, gUnknown_0202D110, 0x800);
		sub_0800FD28();
		sub_0800F4C4(gUnknown_08137EB4[(u8)gUnknown_02016D60_alt.unk21], gUnknown_08137E9C);
		play_sound(32);
	}
}

void sub_0800FCA0(void)
{
	gUnknown_02016D60_alt.unk4--;
	switch (gUnknown_02016D60_alt.unk4)
	{
	case 0:
		gUnknown_02016D60_alt.unk21--;
		gSubState = 1;
		return;
	case 240:
		gUnknown_02016D60_alt.unk1F |= 0x10 << (u8)gUnknown_02016D60_alt.unk21;
		sub_0800FD28();
		play_sound(9);
		break;
	}
	//! why compare to a double here?
	if (gUnknown_02016D60_alt.unk4 < 150.0 && (gNewKeys & 11) != 0)
		gUnknown_02016D60_alt.unk4 = 1;
}
