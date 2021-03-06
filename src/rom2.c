#include "gba/gba.h"
#include "global.h"

void load_palette_from_gfx_group(u32 gfxId)
{
    const struct UnknownStruct6 *r4 = gUnknown_08429750[gfxId];
    
    for (;;)
    {
        u8 r3 = r4->unk2;
        u32 r0;
        u16 r2;
        u32 foo;

        if ((r4->unk3 & 0xF) == 0)
            r2 = 16;
        else
            r2 = r4->unk3 & 0xF;
        r0 = r4->unk0;
        foo = (uintptr_t)gUnknown_03000030;
        r0 += foo;
        load_palette((void *)r0, r3, r2);
        if (!(r4->unk3 & 0x80))
            break;
        r4++;
    }
}

void load_palette(u16 *src, u32 paletteNum, u32 size)
{
    register s32 i asm("r1");
    u32 r2 = 1 << paletteNum;
    u16 *dest;

    asm("":::"r3");
    for (i = size - 1; i != 0; i--)
        r2 |= r2 << 1;
    gUnknown_0200B310 |= r2;
    dest = gPaletteBuf2 + paletteNum * 16;
    size = size * 32;
    if (gUnknown_0202A4F4 != NULL)
    {
        do
        {
            u16 *ptr = dest++;
            *ptr = gUnknown_0202A4F4[*src & 0x1F]
                 | gUnknown_0202A4F4[((*src & 0x3E0) >> 5) + 32]
                 | gUnknown_0202A4F4[((*src & 0x7C00) >> 10) + 64];
            src++;
            size -= 2;
        } while (size != 0);
    }
    else
    {
        CpuFastCopy(src, dest, size);
    }
}

void set_palette_color(u32 index, u32 color)
{
    if (gUnknown_0202A4F4 != NULL)
        color = gUnknown_0202A4F4[color & 0x1F]
              | gUnknown_0202A4F4[((color & 0x3E0) >> 5) + 32]
              | gUnknown_0202A4F4[((color & 0x7C00) >> 10) + 64];
    gPaletteBuf2[index] = color;
    gUnknown_0200B310 |= 1 << (index / 16);
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

void load_gfx_group(u16 gfxId)
{
    struct GfxGroup *r4 = gUnknown_084297F8[gfxId];

    do
    {
        bool32 shouldCopy = FALSE;
        u32 var = (r4->unk0 >> 24) & 0xF;

        switch (var)
        {
          case 14:
            if (gGameLanguage > 1)
                shouldCopy = TRUE;
            break;
          case 15:
            if (gGameLanguage != 0)
                shouldCopy = TRUE;
            break;
          case 7:
                shouldCopy = TRUE;
            break;
          default:
            if (var == gGameLanguage)
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
void *sub_0800BD14(u16 a)
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

//#define gUnknown_0202A8CE ((u16 *)0x0202A8CE)
//#define gUnknown_0202A8D0 ((u16 *)0x0202A8D0)

extern u16 gUnknown_0202A8CE[];
#define gUnknown_0202A8D0 (gUnknown_0202A8CE + 1)

// register differences
#ifdef NONMATCHING
void sub_0800BE50(u8 *a)
{
    register u16 *r4 = &gUnknown_0202A8CE[1];
    register u32 r5 = *r4++;
    u16 r1 = a - (u8 *)&gUnknown_0202A8CE[1];
    u16 r2 = 0;
    
    if (r2 < r5)
    {
        if (*r4 == r1)
        {
            u16 *ptr;
            ptr = &gUnknown_0202A8CE[r5 * 2];
            r4[0] = *ptr;
            *ptr = 0;
            ptr++;
            r4[1] = *ptr;
            *ptr = 0;
            gUnknown_0202A8CE[1] = r5 - 1;
        }
        //_0800BE8C
        else
        {
            register u16 *ptr asm("r1");
            while (*r4 != r1)
            {
                asm("":::"r3");
                r4 += 2;
                r2++;
                if (r2 >= r5)
                    return;
            }
            ptr = &gUnknown_0202A8CE[r5 * 2];
            r4[0] = *ptr;
            *ptr = 0;
            ptr++;
            r4[1] = *ptr;
            *ptr = 0;
            gUnknown_0202A8CE[1] = r5 - 1;
            asm("");
        }
    }
    //_0800BEB8
}
#else
__attribute__((naked))
void sub_0800BE50(u8 *a)
{
    asm("\n\
	push {r4,r5,lr}\n\
	ldr r4, _0800BE88  @ =gUnknown_0202A8D0\n\
	ldrh r5, [r4]\n\
	add r4, r4, #2\n\
	ldr r3, _0800BE88  @ =gUnknown_0202A8D0\n\
	sub r0, r0, r3\n\
	lsl r0, r0, #16\n\
	lsr r1, r0, #16\n\
	mov r2, #0\n\
	cmp r2, r5\n\
	bcs _0800BEB8\n\
	ldrh r0, [r4]\n\
	cmp r0, r1\n\
	bne _0800BE8C\n\
	lsl r0, r5, #2\n\
	sub r1, r3, #2\n\
	add r0, r0, r1\n\
	ldrh r1, [r0]\n\
	strh r1, [r4]\n\
	strh r2, [r0]\n\
	add r0, r0, #2\n\
	ldrh r1, [r0]\n\
	strh r1, [r4, #2]\n\
	strh r2, [r0]\n\
	sub r0, r5, #1\n\
	strh r0, [r3]\n\
	b _0800BEB8\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0800BE88:\n\
	.4byte gUnknown_0202A8D0\n\
_0800BE8C:\n\
	add r4, r4, #4\n\
	add r0, r2, #1\n\
	lsl r0, r0, #16\n\
	lsr r2, r0, #16\n\
	cmp r2, r5\n\
	bcs _0800BEB8\n\
	ldrh r0, [r4]\n\
	cmp r0, r1\n\
	bne _0800BE8C\n\
	lsl r1, r5, #2\n\
	ldr r3, _0800BEC0  @ =gUnknown_0202A8CE\n\
	add r1, r1, r3\n\
	ldrh r0, [r1]\n\
	strh r0, [r4]\n\
	mov r2, #0\n\
	strh r2, [r1]\n\
	add r1, r1, #2\n\
	ldrh r0, [r1]\n\
	strh r0, [r4, #2]\n\
	strh r2, [r1]\n\
	sub r0, r5, #1\n\
	strh r0, [r3, #2]\n\
_0800BEB8:\n\
	pop {r4,r5}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0800BEC0:\n\
	.4byte gUnknown_0202A8CE\n");
}
#endif

void sub_0800BEC4(void)
{
    zero_memory(gUnknown_0202A8CE + 1, 0x2800);
}

extern u8 gUnknown_03005E20[];

void sub_0800BED8(void)
{
    REG_DISPCNT = 0;
    gUnknown_0300050C = 0;
    gUnknown_03000204 = 0;
    gUnknown_03000E34 = gUnknown_03006630;
    gUnknown_03005E08 = (u8 *)gUnknown_03000E34 + 128;
    gUnknown_03005E04 = gUnknown_03005E20 + 64;//gUnknown_03005E60;
    gUnknown_03000948.unk5 = 0;
    gUnknown_03000948.unk4 = 0;
    sub_0800BFBC();
    CpuFastFill(0xA0, (void *)OAM, OAM_SIZE);
    CpuFastFill(0xA0, gUnknown_03005E20, 0x800);
    CpuFastFill(0, gUnknown_03006630, 0x100);
    CpuFastFill(0, gBG0Buffer, 0x1000);
    if (gUnknown_03000BC0.unk0 != 0)
    {
        DmaStop(0);
        gUnknown_03000BC0.unk0 = 0;
    }
}

void sub_0800BFBC(void)
{
    zero_memory(gUnknown_030059A0, 108);
    gUnknown_030059A0->dispCnt = 0x40;
}

int is_ram_address(void *addr)
{
    return (uintptr_t)addr - IWRAM < IWRAM_SIZE
        || (uintptr_t)addr - EWRAM < EWRAM_SIZE;
}

extern u8 gEntityList[];  // TODO: correct type

int sub_0800C004(u8 *a)
{
    return a >= gEntityList && a < gEntityList + 0x4000;
}

int is_rom_address(void *addr)
{
    return (uintptr_t)addr - 0x08000000 < 0x800000;
}

void sub_0800C03C(void)
{
    zero_memory(&gUnknown_03000520, 16);
    sub_0800C080();
    gUnknown_03000520.unkC = -1;
    gUnknown_03000520.unk4 = 1;
}

void sub_0800C060(void)
{
    zero_memory(&gUnknown_03000520, 16);
    gUnknown_03000520.unkC = -1;
    gUnknown_03000520.unk4 = 1;
}

void sub_0800C080(void)
{
    if (gUnknown_03000520.unk4 != 0)
    {
        gUnknown_0200B310 = -1;
        gUnknown_0201EDE0 = 0;
    }
    else
        gUnknown_030004A0.bldcnt = 0;
}

extern u16 gUnknown_08137D18[];

void sub_0800C0B0(u8 a, u32 b)
{
    gUnknown_03000520.unk1 = a;
    gUnknown_03000520.unk3 = b;
    gUnknown_03000520.unk0 = 1;
    gUnknown_03000520.unk2 = 0;
    gUnknown_03000520.unk8 = 0x100;
    if (gUnknown_03000520.unk4 != 0)
    {
        gUnknown_03000520.unk7 = (a > 1) ? 25 : 0;
        gUnknown_0200B310 = 0;
    }
    else
    {
        gUnknown_030004A0.bldcnt = gUnknown_08137D18[a];
        gUnknown_030004A0.bldy = ((a & 1) != 0) ? 15 : 0;
    }
}

extern void (*gUnknown_08427390[])(struct Struct03000520 *);

void sub_0800C118(void)
{
    if (gUnknown_03000520.unk0 != 0)
        gUnknown_08427390[gUnknown_03000520.unk1](&gUnknown_03000520);
}

void sub_0800C140(struct Struct03000520 *a)
{
    if (a->unk4 != 0)
    {
        a->unk8 -= a->unk3;
        if (a->unk8 <= 0)
        {
            a->unk8 = 0;
            a->unk0 = 0;
        }
        sub_0800C1EC(a->unk8);
    }
    else
    {
        a->unk8 -= a->unk3;
        gUnknown_030004A0.bldy = a->unk8 >> 4;
        if (a->unk8 <= 0)
        {
            a->unk0 = 0;
            gUnknown_030004A0.bldy = 0;
        }
    }
}

void sub_0800C190(struct Struct03000520 *a)
{
    if (a->unk4 != 0)
    {
        a->unk8 -= a->unk3;
        if (a->unk8 <= 0)
        {
            a->unk8 = 0;
            a->unk0 = 0;
        }
        sub_0800C1EC(256 - a->unk8);
    }
    else
    {
        a->unk8 -= a->unk3;
        gUnknown_030004A0.bldy = 16 - (a->unk8 >> 4);
        if (a->unk8 <= 0)
        {
            a->unk0 = 0;
            gUnknown_030004A0.bldy = 16;
        }
    }
}
