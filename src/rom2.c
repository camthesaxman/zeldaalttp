#include "gba/gba.h"
#include "global.h"

// abs
s32 sub_0800B830(s32 n)
{
    return abs(n);
}

// signum
s32 sub_0800B838(s32 n)
{
    if (n > 0)
        return 1;
    if (n < 0)
        return -1;
    return 0;
}

void sub_0800B850(u32 *a, s32 size)
{
    do
    {
        *a++ = 0;
        size -= sizeof(u32);
    } while (size > 0);
}

void sub_0800B85C(u32 a)
{
    switch (a)
    {
    default:
        gUnknown_0202A4F4 = NULL;
        break;
    case 0:
        gUnknown_0202A4F4 = gUnknown_08137B98;
        break;
    case 2:
        gUnknown_0202A4F4 = gUnknown_08137C58;
        break;
    }
}

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

/*
void sub_0800B8D4(struct UnknownStruct6 *a, u32 b, u32 c)
{
    s32 i;
    u32 r2 = 1 << b;
    
    for (i = 0; i < c - 1; i++)
        r2 |= r2 << 1;
    gUnknown_0200B310 |= r2;
    b <<= 5;
    c <<= 5;
    if (gUnknown_0202A4F4 != 0)
    {
        
    }
    //_0800B968
}
*/
