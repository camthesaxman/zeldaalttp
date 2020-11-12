#include "gba/gba.h"
#include "global.h"

#ifdef NONMATCHING
void sub_081293B0(void)
{
    u32 r4;
    u32 r5;

    if (gUnknown_03002230.unk9AD == 76)
    {
        LZ77UnCompVram(gUnknown_08279684, (void *)(VRAM + 0x5600));
        LZ77UnCompVram(gUnknown_08279B88, (void *)(VRAM + 0x6000));
        LZ77UnCompVram(gUnknown_0827A228, (void *)(VRAM + 0x7000));
    }
    switch (gUnknown_03002230.unk98E)
    {
      case 0:
        r4 = 0x1400;
        r5 = 0;
        while (r4 < 0x1C00)
        {
            s32 i;
            u32 offset1;
            u32 offset2;
            u32 *ptr;
            const u32 *src;

            if (r4 & 0x80)
                r4 += 0x80;
            if (r5 & 0x80)
                r5 += 0x80;
            //src = (u32 *)gUnknown_083B574C + r4;
            //ptr = (u32 *)0x02003080 + r5;
            offset1 = r4 * 4;
            offset2 = r5 * 4;
            src = (u32 *)(gUnknown_083B574C + offset1);
            ptr = (u32 *)(0x02003080 + offset2);
            for (i = 0; i < 2; i++)
            {
                *ptr++ = 0;
            }
            i = 2;
            //for (i = 2; i < 16; i++, src++, ptr++)
            while (i < 16)
            {
                *ptr = ((src[0] >> 4) & 0x0FFFFFFF) | ((src[8] << 28) & 0xF0000000);
#ifdef NONMATCHING
                if (i == 7)
                    ptr += 120;
                if (i == 9)
                    src += 120;
#else
                asm(
                    "cmp %2, #7\n\t"
                    "bne _081294A8\n\t"
                    "mov r1, #240\n\t"
                    "lsl r1, r1, #1\n\t"
                    "add %0, %0, r1\n\t"
                "_081294A8:\n\t"
                    "cmp %2, #9\n\t"
                    "bne _081294B2\n\t"
                    "mov r0, #240\n\t"
                    "lsl r0, r0, #1\n\t"
                    "add %1, %1, r0\n\t"
                "_081294B2:"
                    :"=r"(ptr), "=r"(src):"r"(i):"r0","r1");
#endif
                i++;
                src++;
                ptr++;
            }
            r4 += 16;
            r5 += 8;
        }
        CpuFastCopy((void *)0x02003080, (void *)(VRAM + 0x4000), 0x1000);
        CpuFastCopy(gUnknown_083BCF58, (void *)(VRAM + 0x5000), 0x800);
        break;
      case 1:
      case 2:
        CpuFastCopy(gUnknown_083BA758, (void *)(VRAM + 0x4000), 0x1000);
        CpuFastCopy(gUnknown_083BB758, (void *)(VRAM + 0x5000), 0x800);
        break;
      case 3:
      case 5:
      case 6:
        CpuFastCopy(gUnknown_083B6358, (void *)(VRAM + 0x4000), 0x1400);
        CpuFastCopy(gUnknown_083BBF58, (void *)(VRAM + 0x5400), 0x800);
        break;
      case 4:
        CpuFastCopy(gUnknown_083B6358, (void *)(VRAM + 0x4000), 0x1400);
        CpuFastCopy(gUnknown_083BC758, (void *)(VRAM + 0x5400), 0x800);
        break;
    }
}
#else
__attribute__((naked))
void sub_081293B0(void)
{
    asm(
    "push {r4-r7,lr}\n\
	mov r7, r9\n\
	mov r6, r8\n\
	push {r6,r7}\n\
	ldr r4, _081293F8  @ =gUnknown_03002230\n\
	ldr r1, _081293FC  @ =0x000009AD\n\
	add r0, r4, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #76\n\
	bne _081293DC\n\
	ldr r0, _08129400  @ =gUnknown_08279684\n\
	ldr r1, _08129404  @ =0x06005600\n\
	bl LZ77UnCompVram\n\
	ldr r0, _08129408  @ =gUnknown_08279B88\n\
	ldr r1, _0812940C  @ =0x06006000\n\
	bl LZ77UnCompVram\n\
	ldr r0, _08129410  @ =gUnknown_0827A228\n\
	ldr r1, _08129414  @ =0x06007000\n\
	bl LZ77UnCompVram\n\
_081293DC:\n\
	ldr r3, _08129418  @ =0x0000098E\n\
	add r0, r4, r3\n\
	ldrb r0, [r0]\n\
	lsl r0, r0, #24\n\
	asr r0, r0, #24\n\
	cmp r0, #6\n\
	bls _081293EC\n\
	b _0812955C\n\
_081293EC:\n\
	lsl r0, r0, #2\n\
	ldr r1, _0812941C  @ =0x08129420\n\
	add r0, r0, r1\n\
	ldr r0, [r0]\n\
	mov pc, r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_081293F8:\n\
	.4byte gUnknown_03002230\n\
_081293FC:\n\
	.4byte 0x000009AD\n\
_08129400:\n\
	.4byte gUnknown_08279684\n\
_08129404:\n\
	.4byte 0x06005600\n\
_08129408:\n\
	.4byte gUnknown_08279B88\n\
_0812940C:\n\
	.4byte 0x06006000\n\
_08129410:\n\
	.4byte gUnknown_0827A228\n\
_08129414:\n\
	.4byte 0x06007000\n\
_08129418:\n\
	.4byte 0x0000098E\n\
_0812941C:\n\
	.4byte 0x08129420\n\
	.4byte _0812943C\n\
	.4byte _081294F4\n\
	.4byte _081294F4\n\
	.4byte _08129518\n\
	.4byte _08129544\n\
	.4byte _08129518\n\
	.4byte _08129518\n\
_0812943C:\n\
	mov r4, #160\n\
	lsl r4, r4, #5\n\
	mov r5, #0\n\
	ldr r0, _081294D8  @ =gUnknown_083B574C\n\
	mov r9, r0\n\
	mov r1, #128\n\
	mov r8, r1\n\
_0812944A:\n\
	add r0, r4, #0\n\
	mov r3, r8\n\
	and r0, r0, r3\n\
	cmp r0, #0\n\
	beq _08129456\n\
	add r4, r4, #128\n\
_08129456:\n\
	add r0, r5, #0\n\
	mov r1, r8\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _08129462\n\
	add r5, r5, #128\n\
_08129462:\n\
	lsl r0, r4, #2\n\
	lsl r1, r5, #2\n\
	mov r3, r9\n\
	add r2, r0, r3\n\
	ldr r0, _081294DC  @ =gUnknown_02003080\n\
	add r3, r1, r0\n\
	add r7, r4, #0\n\
	add r7, r7, #16\n\
	add r6, r5, #0\n\
	add r6, r6, #8\n\
	mov r0, #0\n\
	mov r4, #1\n\
_0812947A:\n\
	stm r3!, {r0}\n\
	sub r4, r4, #1\n\
	cmp r4, #0\n\
	bge _0812947A\n\
	mov r4, #2\n\
	ldr r1, _081294E0  @ =0x0FFFFFFF\n\
	mov r12, r1\n\
	mov r5, #240\n\
	lsl r5, r5, #24\n\
_0812948C:\n\
	ldr r1, [r2]\n\
	lsr r1, r1, #4\n\
	mov r0, r12\n\
	and r1, r1, r0\n\
	ldr r0, [r2, #32]\n\
	lsl r0, r0, #28\n\
	and r0, r0, r5\n\
	orr r1, r1, r0\n\
	str r1, [r3]\n\
	cmp r4, #7\n\
	bne _081294A8\n\
	mov r1, #240\n\
	lsl r1, r1, #1\n\
	add r3, r3, r1\n\
_081294A8:\n\
	cmp r4, #9\n\
	bne _081294B2\n\
	mov r0, #240\n\
	lsl r0, r0, #1\n\
	add r2, r2, r0\n\
_081294B2:\n\
	add r4, r4, #1\n\
	add r2, r2, #4\n\
	add r3, r3, #4\n\
	cmp r4, #15\n\
	ble _0812948C\n\
	add r4, r7, #0\n\
	add r5, r6, #0\n\
	ldr r0, _081294E4  @ =0x00001BFF\n\
	cmp r4, r0\n\
	bls _0812944A\n\
	ldr r0, _081294DC  @ =gUnknown_02003080\n\
	ldr r1, _081294E8  @ =0x06004000\n\
	mov r2, #128\n\
	lsl r2, r2, #3\n\
	bl CpuFastSet\n\
	ldr r0, _081294EC  @ =gUnknown_083BCF58\n\
	ldr r1, _081294F0  @ =0x06005000\n\
	b _08129528\n\
_081294D8:\n\
	.4byte gUnknown_083B574C\n\
_081294DC:\n\
	.4byte gUnknown_02003080\n\
_081294E0:\n\
	.4byte 0x0FFFFFFF\n\
_081294E4:\n\
	.4byte 0x00001BFF\n\
_081294E8:\n\
	.4byte 0x06004000\n\
_081294EC:\n\
	.4byte gUnknown_083BCF58\n\
_081294F0:\n\
	.4byte 0x06005000\n\
_081294F4:\n\
	ldr r0, _08129508  @ =gUnknown_083BA758\n\
	ldr r1, _0812950C  @ =0x06004000\n\
	mov r2, #128\n\
	lsl r2, r2, #3\n\
	bl CpuFastSet\n\
	ldr r0, _08129510  @ =gUnknown_083BB758\n\
	ldr r1, _08129514  @ =0x06005000\n\
	b _08129528\n\
	.byte 0x00\n\
	.byte 0x00\n\
_08129508:\n\
	.4byte gUnknown_083BA758\n\
_0812950C:\n\
	.4byte 0x06004000\n\
_08129510:\n\
	.4byte gUnknown_083BB758\n\
_08129514:\n\
	.4byte 0x06005000\n\
_08129518:\n\
	ldr r0, _08129534  @ =gUnknown_083B6358\n\
	ldr r1, _08129538  @ =0x06004000\n\
	mov r2, #160\n\
	lsl r2, r2, #3\n\
	bl CpuFastSet\n\
	ldr r0, _0812953C  @ =gUnknown_083BBF58\n\
	ldr r1, _08129540  @ =0x06005400\n\
_08129528:\n\
	mov r2, #128\n\
	lsl r2, r2, #2\n\
	bl CpuFastSet\n\
	b _0812955C\n\
	.byte 0x00\n\
	.byte 0x00\n\
_08129534:\n\
	.4byte gUnknown_083B6358\n\
_08129538:\n\
	.4byte 0x06004000\n\
_0812953C:\n\
	.4byte gUnknown_083BBF58\n\
_08129540:\n\
	.4byte 0x06005400\n\
_08129544:\n\
	ldr r0, _08129568  @ =gUnknown_083B6358\n\
	ldr r1, _0812956C  @ =0x06004000\n\
	mov r2, #160\n\
	lsl r2, r2, #3\n\
	bl CpuFastSet\n\
	ldr r0, _08129570  @ =gUnknown_083BC758\n\
	ldr r1, _08129574  @ =0x06005400\n\
	mov r2, #128\n\
	lsl r2, r2, #2\n\
	bl CpuFastSet\n\
_0812955C:\n\
	pop {r3,r4}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n\
_08129568:\n\
	.4byte gUnknown_083B6358\n\
_0812956C:\n\
	.4byte 0x06004000\n\
_08129570:\n\
	.4byte gUnknown_083BC758\n\
_08129574:\n\
	.4byte 0x06005400");
}
#endif

static_assert(offsetof(struct UnknownStruct7, unk1AE3) == 0x1AE3);
static_assert(offsetof(struct UnknownStruct7, unk1B04) == 0x1B04);
static_assert(offsetof(struct UnknownStruct7, unk1B0C) == 0x1B0C);

u32 sub_08129578(void)
{
    if (gUnknown_03002230.unk1AE3 == 0)
        return 1;
    if (--gUnknown_03002230.unk1AE3 == 1 && gUnknown_03002230.unk1B04 == 0 && gUnknown_03002230.unk9AC != 20)
        sub_0812A324(70, 0);
    return 0;
}

void sub_081295CC(void)
{
    gUnknown_08180980[gUnknown_03002230.unk1AD0]();
}

void sub_081295F4(void)
{
    void *ptr = NULL;
    
    switch (gUnknown_03002230.unk98E)
    {
      case 0:
        ptr = gUnknown_08180CE4;
        break;
      case 1:
      case 2:
        ptr = gUnknown_08180CE8;
        break;
      case 3:
        ptr = gUnknown_08195D88;
        break;
      case 4:
        ptr = gUnknown_08195D8C;
        break;
      case 5:
        ptr = gUnknown_08195D90;
        break;
      case 6:
        ptr = gUnknown_08195D94;
        break;
    }
    sub_08129CD8(&gUnknown_03002230.unk1AFC, &gUnknown_03002230.unk1B00, ptr);
    gUnknown_03002230.unk1AF8 = ptr;
}

void sub_08129684(void)
{
    gUnknown_03002230.unk1AD0 = 0;
}

void sub_08129698(void)
{
    if (gUnknown_03002230.unk1ACC == 4)
        gUnknown_03002230.unk1ACC = 3;
}

u32 sub_081296B8(void)
{
    return (gUnknown_03002230.unk1AE3 == 0);
}

void sub_081296D8(void)
{
    gUnknown_03002230.unk1AE8 = 3;
    gUnknown_03002230.unk1AE9 = 0;
    sub_08127334();
    gUnknown_03002230.unk1ACA = 0x8310;
    gUnknown_03002230.unk1ACC = 2;
    sub_08129838();
    sub_08129838();
    sub_08129838();
    sub_08129838();
    sub_08129838();
}

void sub_08129734(void)
{
    if (gUnknown_03002230.unk9AC == 20)
    {
        sub_08133774();
        LZ77UnCompVram(gUnknown_082788B8, (void *)(VRAM + 0x6000));
    }
    sub_0812FC80();
    sub_08127334();
}

void sub_0812976C(void)
{
    s32 i;
    u8 *ptr;

    gUnknown_03002230.unk1AF2 = 0;
    gUnknown_03002230.unk1AF0 = 0;
    gUnknown_03002230.unk1AF4 = 0;
    gUnknown_03002230.unk1AF6 = 0;
    
    // This loop is hard to match.
    i = 207;
    ptr = gUnknown_02010470 + 207;
    while (i >= 0)
    {
	*ptr-- = 0;
	i--;
    }
}

// unused?
void sub_081297B0(u8 *a)
{
    gUnknown_03002230.unk1ACC = sub_08129E0C(gUnknown_03002230.unk1AF8, a + gUnknown_03002230.unk1AD6 + 5);
}

extern const u16 gUnknown_0818097C[];

// unused?
void sub_081297E8(u8 *a)
{
    gUnknown_03002230.unk1ACA =
        gUnknown_0818097C[sub_08129E0C(gUnknown_03002230.unk1AF8, a + gUnknown_03002230.unk1AD6 + 5)];
}

void sub_0812982C()
{
    sub_081279A0();
}

void sub_08129838(void)
{
    gUnknown_08180B34[gUnknown_03002230.unk1ACC]();
}

void sub_08129860(void)
{
    u16 sp0;
    u16 sp2;
    int i;

    sub_08129CB0(&sp0, &sp2);
    sub_081290B4(&sp0, &sp2);

    for (i = 6; i != 0; i--)
    {
        sp2 = 6;
        sub_081290B4(&sp0, &sp2);
    }
    sp2 = 12;
    sub_081290B4(&sp0, &sp2);
    //gUnknown_02000402[sp0 / 2] = 0xFFFF;
    *(gUnknown_02000402 + (sp0 / 2)) = 0xFFFF;  // why is this needed to match?
    gUnknown_03002230.unk1ACC = 2;
}

void sub_081298D0(void)
{
    u8 var = gUnknown_03002230.unk1ACF;

    if (var != 0)
    {
        if (var <= 6)
            var = 1;
        else
            var = 2;
    }
    gUnknown_08180B48[var]();
}

void sub_08129908(void)
{
    u16 sp0;
    u16 sp2;

    sub_08129CB0(&sp0, &sp2);
    sub_081290B4(&sp0, &sp2);
    //gUnknown_02000402[sp0 / 2] = 0xFFFF;
    *(gUnknown_02000402 + (sp0 / 2)) = 0xFFFF;  // why is this needed to match?
    gUnknown_03002230.unk1ACF++;
}

void sub_08129958(void)
{
    u16 sp0 = 0;
    u16 sp2 = 6;

    sub_081290B4(&sp0, &sp2);
    //gUnknown_02000402[sp0 / 2] = 0xFFFF;
    *(gUnknown_02000402 + (sp0 / 2)) = 0xFFFF;  // why is this needed to match?
    gUnknown_03002230.unk1ACF++;
}

void sub_081299A4(void)
{
    u16 sp0 = 0;
    u16 sp2 = 12;

    sub_081290B4(&sp0, &sp2);
    //gUnknown_02000402[sp0 / 2] = 0xFFFF;
    *(gUnknown_02000402 + (sp0 / 2)) = 0xFFFF;  // why is this needed to match?
    gUnknown_03002230.unk1ACF++;
    gUnknown_03002230.unk1ACC = 2;
}

void sub_081299FC(void)
{
    sub_081291C8();
    gUnknown_03002230.unk1ACC++;
}

// not sure what this returns
int sub_08129A1C(u8 a)
{
    return gUnknown_08180B58[a]();
}

int sub_08129A34(void)
{
    int r4 = 0;

    sub_08127DBC();
    r4 = gUnknown_03002230.unk1AD6 != 19
      && gUnknown_03002230.unk1AD6 != 59
      && gUnknown_03002230.unk1AD6 != 99;
    return r4;
}

int sub_08129A68(void)
{
    gUnknown_03002230.unk1ACD--;
    return 0;
}

int sub_08129A80(void)
{
    int r5 = 0;

    if (gUnknown_03002230.unk9AC == 20)
    {
        sub_08132C34();
        if (gUnknown_03002230.unkCF8 == 0)
            r5 = 1;
        else
            r5 = 0;
        if (r5 == 0)
            return 0;
    }
    gUnknown_03002230.unk1AD2++;
    return 0;
}

int sub_08129AC8(void)
{
    gUnknown_03002230.unk1AD2++;
    gUnknown_03002230.unk1B04 = 1;
    return 0;
}

int sub_08129AEC(void)
{
    u8 r1;
 
    if (!(gUnknown_03002230.unk544 & 0x80))
    {
        r1 = gUnknown_03002230.unk1ADA;
        if (r1 > 1)
            r1 = 2;
    }
    else
        r1 = 1;
    gUnknown_08180C90[r1]();
    return 0;
}

void sub_08129B30(void)
{
    gUnknown_03002230.unk1ADA =
        //gUnknown_08180C9C[gUnknown_02005481[gUnknown_03002230.unk1AD2] & 0xF];
        gUnknown_08180C9C[*(gUnknown_02005481 + gUnknown_03002230.unk1AD2) & 0xF];
    sub_08129B70();
}

void sub_08129B70(void)
{
    gUnknown_03002230.unk1ADA--;
}

void sub_08129B88(void)
{
    gUnknown_03002230.unk1AD2 += 2;
    gUnknown_03002230.unk1ADA = 0;
    gUnknown_03002230.unk1ACD = gUnknown_03002230.unk1B05;
    gUnknown_03002230.unk1ACE = gUnknown_03002230.unk1B05;
}

int sub_08129BC4(void)
{
    //u8 *dest = gUnknown_03002230.fillerE50;
    //CpuFastFill16(0, dest, 0x1000);

    // TODO: this is part of gUnknown_03002230
    extern u8 gUnknown_02003080[];
    CpuFastFill16(0, gUnknown_02003080, 0x1000);

    gUnknown_03002230.unk1AD6 = 0;
    gUnknown_03002230.unk1AD2++;
    gUnknown_03002230.unk1AE0 = 0;
    return 0;
}

int sub_08129C10(void)
{
    if (sub_08129578() != 0
     && (gUnknown_03002230.unk547 | gUnknown_03002230.unk546) != 0)
    {
        gUnknown_03002230.unk1ACC = 4;
        gUnknown_03002230.unk1AE3 = 16;
    }
    return 0;
}

extern const u16 gUnknown_0818097C[];

void sub_08129C58(void)
{
    u16 var = gUnknown_03002230.unk16C0 + (gUnknown_03002230.unk16C1 << 8) - gUnknown_03002230.unk958;

    if (var > 91)
        gUnknown_03002230.unk1ACA = gUnknown_0818097C[0];
    else
        gUnknown_03002230.unk1ACA = gUnknown_0818097C[1];
}

void sub_08129CB0(u16 *a, u16 *b)
{
    gUnknown_03002230.unk1AC8 = gUnknown_03002230.unk1ACA;
    *a = 0;
    *b = 0;
}

void sub_08129CD8(void **a, void **b, u8 *c)
{
    u32 r4;
    u32 r1;

    *a = c + 32;
    r4 = sub_08129E0C(c, c + 41) | (sub_08129E0C(c, *a + 8) << 8);
    r1 = r4 * 4 + 48;
    if (r1 & 0x1F)
        r1 = (r1 + 32) & ~31;
    *b = c + r1;
}

#ifdef NONMATCHING
int sub_08129D28(u8 *a, u8 *b, u32 c, u32 d)
{
    //u32 r5 = b + d * 4 + 16;
    int r4 = ((sub_08129E0C(a, b + d * 4 + 16) << 24)
           | (sub_08129E0C(a, b + d * 4 + 17) << 16)
           | (sub_08129E0C(a, b + d * 4 + 19) << 8)
           |  sub_08129E0C(a, b + d * 4 + 22)) + 8;

    return c + r4;
}
#else
__attribute__((naked))
int sub_08129D28(u8 *a, u8 *b, u32 c, u32 d)
{
    asm("\n\
	push {r4-r6,lr}\n\
	mov r6, r10\n\
	mov r5, r9\n\
	mov r4, r8\n\
	push {r4-r6}\n\
	mov r9, r0\n\
	add r5, r1, #0\n\
	mov r10, r2\n\
	lsl r3, r3, #2\n\
	add r3, r3, #16\n\
	add r5, r5, r3\n\
	add r1, r5, #0\n\
	bl sub_08129E0C\n\
	add r4, r0, #0\n\
	add r1, r5, #1\n\
	mov r0, r9\n\
	bl sub_08129E0C\n\
	mov r8, r0\n\
	add r1, r5, #2\n\
	mov r0, r9\n\
	bl sub_08129E0C\n\
	add r6, r0, #0\n\
	add r5, r5, #3\n\
	mov r0, r9\n\
	add r1, r5, #0\n\
	bl sub_08129E0C\n\
	lsl r4, r4, #24\n\
	mov r1, r8\n\
	lsl r1, r1, #24\n\
	lsr r1, r1, #8\n\
	orr r4, r4, r1\n\
	lsl r6, r6, #24\n\
	lsr r6, r6, #16\n\
	orr r4, r4, r6\n\
	lsl r0, r0, #24\n\
	lsr r0, r0, #24\n\
	orr r4, r4, r0\n\
	add r4, r4, #8\n\
	add r10, r10, r4\n\
	mov r0, r10\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r6}\n\
	pop {r1}\n\
	bx r1\n");
}
#endif

void sub_08129D90(void)
{
    if (gUnknown_03002230.unk1B04 == 0)
        sub_0812A324(80, 0);
    gUnknown_03002230.unk1ACC = 4;
}

void sub_08129DC0(void)
{
    if (gUnknown_03002230.unk1B04 != 0)
        sub_0812A324(119, 0);
    else
        sub_0812A324(108, 0);
    gUnknown_03002230.unk1AE2 = 255;
    gUnknown_03002230.unk1ACC = 4;
}

u8 sub_08129E0C(const u8 *a, const u8 *b)
{
    u32 r5 = (b - a) & 0xFF;
    u32 r3 = (b - a) & 0xF;
    u32 r0;

    if (b - a > 42)
    {
        r0 = ((r5 - gUnknown_08180CD0[15 - r3]) ^ *b) - *(b - 43);
        return (r0 - r5) ^ gUnknown_08180CD0[r3];
    }
    else
    {
        r0 = (r5 - gUnknown_08180CD0[15 - r3]) ^ *b;
        return (r0 - r5) ^ gUnknown_08180CD0[r3];
    }
}

void sub_08129E60(void)
{
    sub_0812A6CC(gUnknown_08198C30);
    sub_0812A13C();
    sub_08129EF4();
    sub_0812A5D0();
}

void sub_08129E7C(void)
{
    sub_0812A194();
    sub_08129F30();
    sub_0812A5F4();
    sub_0812C704();
}

void sub_08129E94(u8 a)
{
    sub_0812C904(gUnknown_08198C4C[a]);
}

void sub_08129EAC(u8 a)
{
    gUnknown_030000B8 = a;
    sub_0812C7CC(0xBFFFE, a);
}

void sub_08129ECC(void)
{
    sub_0812C7AC(0xFFFFF, 0);
}

void sub_08129EE0(void)
{
    sub_0812C7AC(0xBFFFF, 0);
}

void sub_08129EF4(void)
{
    gUnknown_030000C0 = 0;
    gUnknown_030000BE = -1;
    gUnknown_030000BC = 0;
    gUnknown_030000C1 = 0;
    gUnknown_030000C3 = 128;
    gUnknown_030000C2 = 0;
}

void sub_08129F30(void)
{
    switch (gUnknown_030000C0)
    {
    case 0:  // needed to match
        break;
    case 1:
        if (sub_0812C64C(18) != 0)
            gUnknown_030000C0 = 2;
        break;
    case 2:
    case 3:
        if (sub_0812C64C(18) == 0)
        {
            gUnknown_030000C0 = 0;
            gUnknown_030000BE = -1;
        }
        break;
    }

    if (gUnknown_030000B8 == 1)
    {
        if (gUnknown_030000C3 > 4)
        {
            gUnknown_030000C3 -= 4;
            sub_0812C814(18, gUnknown_030000C3);
        }
        else
        {
            gUnknown_030000C3 = 0;
            sub_0812C814(18, 0);
            sub_0812C7CC(0xFFFFE, 1);
        }
    }
    else if (gUnknown_030000C2 == 1)
    {
        if (gUnknown_030000C3 > 52)
        {
            gUnknown_030000C3 -= 4;
            sub_0812C814(18, gUnknown_030000C3);
        }
        else
        {
            gUnknown_030000C3 = 48;
            sub_0812C814(18, 48);
            gUnknown_030000C2 = 0;
        }
    }
    else
    {
        sub_0812C7CC(0xFFFFE, 0);
        switch (gUnknown_030000C1)
        {
        case 0:
            if (gUnknown_030000C3 > 123)
            {
                gUnknown_030000C3 = 128;
                sub_0812C814(18, 128);
            }
            else
            {
                gUnknown_030000C3 += 4;
                sub_0812C814(18, gUnknown_030000C3);
            }
            break;
        case 1:
            if (gUnknown_030000C3 <= 43)
            {
                gUnknown_030000C3 += 4;
                sub_0812C814(18, gUnknown_030000C3);
            }
            else
            {
                gUnknown_030000C3 = 48;
                sub_0812C814(18, 48);
            }
            break;
        }
    }
}

void sub_0812A044(u16 a)
{
    if (gUnknown_030000BC != 1)
    {
        if (sub_0812A0B8() != a)
        {
            sub_0812C718(18, gUnknown_08198C50[a][0]);
            sub_0812A080(a);
        }
    }
}

