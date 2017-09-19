#include "gba/gba.h"
#include "global.h"

#ifdef NONMATCHING
void sub_0800B890(u32 a)
{
    const struct UnknownStruct6 *r4 = gUnknown_08429750[a];

    for (;;)
    {
        u8 r3 = r4->unk2;
        u8 r2 = r4->unk3;
        u16 r0;

        if ((r2 & 0xF) == 0)
            r2 == 16;
        else
            r2 = r2 & 0xF;
        r0 = r4->unk0;
        sub_0800B8D4(gUnknown_03000030 + r0, r3, r2);
        if (!(r4->unk3 & 0x80))
            break;
        r4++;
    }
}
#else
__attribute__((naked))
void sub_0800B890(u32 a)
{
    asm("push {r4,lr}\n\
	ldr r1, _0800B89C  @ =gUnknown_08429750\n\
	lsl r0, r0, #2\n\
	add r0, r0, r1\n\
	ldr r4, [r0]\n\
	b _0800B8A2\n\
_0800B89C:\n\
	.4byte gUnknown_08429750\n\
_0800B8A0:\n\
	add r4, r4, #4\n\
_0800B8A2:\n\
	ldrb r3, [r4, #2]\n\
	ldrb r0, [r4, #3]\n\
	mov r2, #15\n\
	and r2, r2, r0\n\
	cmp r2, #0\n\
	bne _0800B8B0\n\
	mov r2, #16\n\
_0800B8B0:\n\
	ldrh r0, [r4]\n\
	ldr r1, _0800B8D0  @ =0x03000030\n\
	ldr r1, [r1]\n\
	add r0, r0, r1\n\
	add r1, r3, #0\n\
	bl sub_0800B8D4\n\
	ldrb r1, [r4, #3]\n\
	mov r0, #128\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	bne _0800B8A0\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0800B8D0:\n\
	.4byte 0x03000030");
}
#endif

void sub_0800B8D4(u16 *a, u32 b, u32 c)
{
    register s32 i asm("r1");
    u32 r2 = 1 << b;
    u16 *r6;

    asm("":::"r3");
    for (i = c - 1; i != 0; i--)
        r2 |= r2 << 1;
    gUnknown_0200B310 |= r2;
    r6 = gUnknown_020163D0 + b * 16;
    c = c * 32;
    if (gUnknown_0202A4F4 != NULL)
    {
        do
        {
            u16 *r4 = r6++;
            *r4 = gUnknown_0202A4F4[*a & 0x1F] | gUnknown_0202A4F4[((*a & 0x3E0) >> 5) + 32] | gUnknown_0202A4F4[((*a & 0x7C00) >> 10) + 64];
            a++;
            c -= 2;
        } while (c != 0);
    }
    else
    {
        CpuFastCopy(a, r6, c);
    }
}

void sub_0800B980(u32 a, u32 b)
{
    if (gUnknown_0202A4F4 != NULL)
        b = gUnknown_0202A4F4[b & 0x1F] | gUnknown_0202A4F4[((b & 0x3E0) >> 5) + 32] | gUnknown_0202A4F4[((b & 0x7C00) >> 10) + 64];
    gUnknown_020163D0[a] = b;
    gUnknown_0200B310 |= 1 << (a / 16);
}

// copy palettes
void sub_0800B9E4(void)
{
    u32 r4;
    u16 *src;
    u16 *dest;

    if (gUnknown_02002480 != 0)
    {
        src = gUnknown_02000030;
        r4 = gUnknown_02002480;
    }
    else
    {
        src = gUnknown_020163D0;
        r4 = gUnknown_0201EF14;
    }
    dest = (void *)PLTT;
    while (r4 != 0)
    {
        if (r4 & 1)
            CpuFastCopy(src, dest, 16 * sizeof(u16));
        src += 16;
        dest += 16;
        r4 >>= 1;
    }
    gUnknown_02002480 = gUnknown_0201EF14 = 0;
}

void sub_0800BA44(u16 a)
{
    struct UnknownStruct9 *r4 = gUnknown_084297F8[a];

    do
    {
        bool32 shouldCopy = FALSE;
        u32 var = (r4->unk0 >> 24) & 0xF;

        switch (var)
        {
          case 14:
            if (gUnknown_0202A8C0 > 1)
                shouldCopy = TRUE;
            break;
          case 15:
            if (gUnknown_0202A8C0 != 0)
                shouldCopy = TRUE;
            break;
          case 7:
                shouldCopy = TRUE;
            break;
          default:
            if (var == gUnknown_0202A8C0)
                shouldCopy = TRUE;
            break;
        }

        if (shouldCopy)
        {
            const u8 *src = gUnknown_03000030 + (r4->unk0 & 0x00FFFFFF);
            u8 *dest = r4->dest;

            if (r4->size < 0)
            {
                if (dest >= (u8 *)VRAM)
                    LZ77UnCompVram(src, dest);
                else
                    LZ77UnCompWram(src, dest);
            }
            else
            {
                CpuCopy16(src, dest, (u32)r4->size);
            }
        }
    } while (((r4++)->unk0 >> 24) & 0x80);
}

void sub_0800BAE4(u16 *dest, const u16 *src, u16 c, u16 d)
{
    u16 var;
    u16 i;

    if (d & 0x8000)
        var = 64 - c;
    else
        var = 32 - c;
    d &= 0x7FFF;
    do
    {
        for (i = 0; i < c; i++)
            *dest++ = *src++;
        dest += var;
        d--;
    } while (d != 0);
}

void sub_0800BB3C(u16 *dest, const u16 *src, u16 c, u16 d, u16 e)
{
    u16 var;
    u16 i;

    if (d & 0x8000)
        var = 64 - c;
    else
        var = 32 - c;
    d &= 0x7FFF;
    do
    {
        for (i = 0; i < c; i++)
            *dest++ = *src++ | e;
        dest += var;
        d--;
    } while (d != 0);
}

void rom2_read_keys(void)
{
    u16 keyInput = REG_KEYINPUT ^ KEYS_MASK;

    keyInput &= KEYS_MASK;
    gNewKeys = keyInput & ~gHeldKeys;
    gHeldKeys = keyInput;
}

void sub_0800BBD4(void)
{
    u16 keyInput = REG_KEYINPUT ^ KEYS_MASK;

    gNewKeys = keyInput & ~gHeldKeys;
    if (keyInput == gHeldKeys)
    {
        gUnknown_03000BF4--;
        if (gUnknown_03000BF4 == 0)
        {
            gUnknown_03005BE0 = keyInput;
            gUnknown_03000BF4 = 4;
        }
        else
        {
            gUnknown_03005BE0 = 0;
        }
    }
    else
    {
        gUnknown_03000BF4 = 20;
        gUnknown_03005BE0 = keyInput & ~gHeldKeys;
    }
    gHeldKeys = keyInput;
}

void sub_0800BC50(void)
{
    gUnknown_03005ADC[0] = (gHeldKeys & DPAD_UP) ? gUnknown_03005ADC[0] + 1 : 0;
    gUnknown_03005ADC[1] = (gHeldKeys & DPAD_RIGHT) ? gUnknown_03005ADC[1] + 1 : 0;
    gUnknown_03005ADC[2] = (gHeldKeys & DPAD_DOWN) ? gUnknown_03005ADC[2] + 1 : 0;
    gUnknown_03005ADC[3] = (gHeldKeys & DPAD_LEFT) ? gUnknown_03005ADC[3] + 1 : 0;

    if (gUnknown_03005ADC[0] > 29)
    {
        gNewKeys |= DPAD_UP;
        gUnknown_03005ADC[0] = 22;
    }

    if (gUnknown_03005ADC[1] > 29)
    {
        gNewKeys |= DPAD_RIGHT;
        gUnknown_03005ADC[1] = 22;
    }

    if (gUnknown_03005ADC[2] > 29)
    {
        gNewKeys |= DPAD_DOWN;
        gUnknown_03005ADC[2] = 22;
    }

    if (gUnknown_03005ADC[3] > 29)
    {
        gNewKeys |= DPAD_LEFT;
        gUnknown_03005ADC[3] = 22;
    }
}
