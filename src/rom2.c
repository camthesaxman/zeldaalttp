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
    r6 = gPaletteBuf2 + b * 16;
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
    gPaletteBuf2[a] = b;
    gUnknown_0200B310 |= 1 << (a / 16);
}

void flush_palette_buffer(void)
{
    u32 bitmask;
    u16 *src;
    u16 *dest;

    if (gPaletteBuf1Bitmask != 0)
    {
        src = gPaletteBuf1;
        bitmask = gPaletteBuf1Bitmask;
    }
    else
    {
        src = gPaletteBuf2;
        bitmask = gPaletteBuf2Bitmask;
    }
    dest = (void *)PLTT;
    while (bitmask != 0)
    {
        if (bitmask & 1)
            CpuFastCopy(src, dest, 16 * sizeof(u16));
        src += 16;
        dest += 16;
        bitmask >>= 1;
    }
    gPaletteBuf1Bitmask = gPaletteBuf2Bitmask = 0;
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


// Weird pointer arithmetic and looping. I'm not going to attempt decompiling this one right now.
/*
u32 sub_0800BD14(u16 a)
{
    struct UnknownStruct10
    {
        u16 unk0;
        u16 unk2;
    };

    u16 r2;
    u16 r7;
    void *r4;
    void *r3;
    u32 r5;
    u32 r10;
    u16 r12;
    struct UnknownStruct10 *r8;
    
    a &= ~3;
    r8 = (struct UnknownStruct10 *)gUnknown_0202A8D0;
    r7 = gUnknown_0202A8D0[0];
    r5 = 1;
    // yeah, I don't understand
    r3 = (u16 *)((u8 *)gUnknown_0202A8D0 + 0x2800);
    r4 = (u16 *)((u8 *)r3 - a);
    r2 = 0;
    while (r2 < r7)
    {
        void *r1 = (u8 *)gUnknown_0202A8D0 + r8[r2].unk2;  // WTF?
        void *r0 = (u8 *)gUnknown_0202A8D0 + r8[r2 + 1].unk0;
        if (r1 <= r4 && r4 <= r0)
            goto _0800BD8E;
        //_0800BD7C
        if (r1 <= r3 && r3 <= r0)
        {
            r5 = 0;
            break;
        }
        //_0800BD4C
        if (r1 <= r4 && r3 <= r0)
            goto _0800BD8E;
        if (r4 <= r1 && r0 <= r3)
            goto _0800BD8E;
        //_0800BD5C
        r2++;
    }
    //_0800BD86
    //r10 = r7 * 4;
    if (r5 == 0)
    {
    _0800BD8E:
        //r10 = r7 * 4;
        for (r12 = 0; r12 < r7; r12++)
        {
            r3 = (u8 *)gUnknown_0202A8D0 + r8[r12].unk2;
            r4 = (u8 *)r3 - a;
            r5 = 0;
            if (r4 >= &r8[r7 + 1].unk2)
            {
                r5 = 1;
                break;
            }
        }
        if (r5 != 0)  // maybe?
        {
            for (r2 = 0; r2 < r7; r2++)
            {
                
            }
        }
        //_0800BE14
    }
    //_0800BE18
}
*/
__attribute__((naked))
u32 sub_0800BD14(u16 a)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r10\n\
	mov r6, r9\n\
	mov r5, r8\n\
	push {r5-r7}\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #16\n\
	mov r9, r0\n\
	add r0, r0, #3\n\
	mov r2, #4\n\
	neg r2, r2\n\
	add r1, r2, #0\n\
	and r0, r0, r1\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #16\n\
	mov r9, r0\n\
	ldr r6, _0800BD48  @ =gUnknown_0202A8D0\n\
	mov r8, r6\n\
	ldrh r7, [r6]\n\
	mov r5, #1\n\
	mov r3, #160\n\
	lsl r3, r3, #6\n\
	add r3, r3, r8\n\
	sub r4, r3, r0\n\
	mov r2, #0\n\
	b _0800BD62\n\
_0800BD48:\n\
	.4byte gUnknown_0202A8D0\n\
_0800BD4C:\n\
	cmp r1, r4\n\
	bhi _0800BD54\n\
	cmp r3, r0\n\
	bls _0800BD8E\n\
_0800BD54:\n\
	cmp r4, r1\n\
	bhi _0800BD5C\n\
	cmp r0, r3\n\
	bls _0800BD8E\n\
_0800BD5C:\n\
	add r0, r2, #1\n\
	lsl r0, r0, #16\n\
	lsr r2, r0, #16\n\
_0800BD62:\n\
	cmp r2, r7\n\
	bcs _0800BD86\n\
	lsl r0, r2, #2\n\
	add r0, r0, r8\n\
	ldrh r1, [r0, #2]\n\
	ldr r6, _0800BD98  @ =gUnknown_0202A8D0\n\
	add r1, r1, r6\n\
	ldrh r0, [r0, #4]\n\
	add r0, r0, r6\n\
	cmp r1, r4\n\
	bhi _0800BD7C\n\
	cmp r4, r0\n\
	bls _0800BD8E\n\
_0800BD7C:\n\
	cmp r1, r3\n\
	bhi _0800BD4C\n\
	cmp r3, r0\n\
	bhi _0800BD4C\n\
	mov r5, #0\n\
_0800BD86:\n\
	lsl r0, r7, #2\n\
	mov r10, r0\n\
	cmp r5, #0\n\
	bne _0800BE18\n\
_0800BD8E:\n\
	mov r1, #0\n\
	mov r12, r1\n\
	lsl r2, r7, #2\n\
	mov r10, r2\n\
	b _0800BDAC\n\
_0800BD98:\n\
	.4byte gUnknown_0202A8D0\n\
_0800BD9C:\n\
	mov r5, #0\n\
_0800BD9E:\n\
	mov r0, r12\n\
	add r0, r0, #1\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #16\n\
	mov r12, r0\n\
	cmp r12, r7\n\
	bcs _0800BE14\n\
_0800BDAC:\n\
	mov r6, r12\n\
	lsl r0, r6, #2\n\
	add r0, r0, r8\n\
	ldrh r0, [r0, #2]\n\
	ldr r1, _0800BDD4  @ =gUnknown_0202A8D0\n\
	add r3, r0, r1\n\
	mov r2, r9\n\
	sub r4, r3, r2\n\
	mov r5, #0\n\
	mov r0, r10\n\
	add r0, r0, #2\n\
	add r0, r0, r8\n\
	add r0, r0, #4\n\
	cmp r4, r0\n\
	bcc _0800BD9E\n\
	mov r5, #1\n\
	mov r2, #0\n\
	add r6, r1, #0\n\
	b _0800BDEE\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0800BDD4:\n\
	.4byte gUnknown_0202A8D0\n\
_0800BDD8:\n\
	cmp r1, r4\n\
	bhi _0800BDE0\n\
	cmp r3, r0\n\
	bls _0800BD9C\n\
_0800BDE0:\n\
	cmp r4, r1\n\
	bhi _0800BDE8\n\
	cmp r0, r3\n\
	bls _0800BD9C\n\
_0800BDE8:\n\
	add r0, r2, #1\n\
	lsl r0, r0, #16\n\
	lsr r2, r0, #16\n\
_0800BDEE:\n\
	cmp r2, r7\n\
	bcs _0800BE10\n\
	lsl r0, r2, #2\n\
	add r0, r0, r8\n\
	ldrh r1, [r0, #2]\n\
	add r1, r1, r6\n\
	ldrh r0, [r0, #4]\n\
	add r0, r0, r6\n\
	cmp r1, r4\n\
	bhi _0800BE06\n\
	cmp r4, r0\n\
	bcc _0800BD9C\n\
_0800BE06:\n\
	cmp r1, r3\n\
	bcs _0800BDD8\n\
	cmp r3, r0\n\
	bhi _0800BDD8\n\
	mov r5, #0\n\
_0800BE10:\n\
	cmp r5, #0\n\
	beq _0800BD9E\n\
_0800BE14:\n\
	cmp r5, #0\n\
	beq _0800BE40\n\
_0800BE18:\n\
	ldr r0, _0800BE3C  @ =gUnknown_0202A8D2\n\
	mov r6, r10\n\
	add r2, r6, r0\n\
	sub r3, r0, #2\n\
	sub r1, r4, r3\n\
	strh r1, [r2]\n\
	add r0, r0, #2\n\
	add r0, r0, r10\n\
	add r1, r1, r9\n\
	strh r1, [r0]\n\
	add r0, r7, #1\n\
	strh r0, [r3]\n\
	add r0, r4, #0\n\
	mov r1, r9\n\
	bl zero_memory\n\
	add r0, r4, #0\n\
	b _0800BE42\n\
_0800BE3C:\n\
	.4byte gUnknown_0202A8D2\n\
_0800BE40:\n\
	mov r0, #0\n\
_0800BE42:\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r7}\n\
	pop {r1}\n\
	bx r1");
}

/*
#define gUnknown_0202A8CE ((u16 *)0x0202A8CE)
#define gUnknown_0202A8D0 ((u16 *)0x0202A8D0)

void sub_0800BE50(u8 *a)
{
    u16 *r4 = gUnknown_0202A8D0;
    u32 r5 = *r4++;
    u16 r1 = a - (u8 *)gUnknown_0202A8D0;
    u16 r2 = 0;
    
    while (r2 < r5)
    {
        if (r4[0] == r1)
        {
            u16 *r0 = gUnknown_0202A8CE + r5 * 2;
            r4[0] = *r0;
            *r0++ = r2;
            r4[1] = *r0;
            *r0 = r2;
            gUnknown_0202A8D0[0] = r5 - 1;
        }
    }
}
*/
