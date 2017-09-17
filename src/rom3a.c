#include "gba/gba.h"
#include "global.h"

static_assert(offsetof(struct UnknownStruct7, filler560) == 0x560);
static_assert(offsetof(struct UnknownStruct7, unk952) == 0x952);

/*
void sub_080A6754(void)
{
    u8 *r1 = &gUnknown_0816B308[gUnknown_03002230.unk968];
    u16 r7 = gUnknown_03003E74 * 4 + *r1;
    u16 r2;
    s16 r9;
    u16 r6;
    
    gUnknown_03002230.unk97C = gUnknown_081697A0[gUnknown_03002230.unk964];
    gUnknown_03002230.unk189A = gUnknown_03002230.unk97C * 2;
    r2 = gUnknown_03002230.unk97C * 3;
    
    r9 = gUnknown_08169180[r2] + gUnknown_03002230.unk961;
    r9 -= gUnknown_03002230.unk97D;
    // mov r9, r0
    
    r6 = gUnknown_08169180[r2 + 1] + gUnknown_03002230.unk960;
    gUnknown_03002230.unk96C = gUnknown_08169180[r2 + 2] << 8;
    
    r2 = gUnknown_03002230.unk96C & 0xFFFFF000;
    if (r2 != (240 << 8))
    {
        struct UnknownStruct8 *r3;
        struct UnknownStruct8 *r4;
        
        r2 |= gUnknown_03002230.unk1723 + (gUnknown_03002230.unk1724 << 8);
        r2 |= 0x100;
        sub_080A452C(r7, r2);
        r3 = &gUnknown_03002230.unk550[r7 / 4];
        if (gUnknown_03003E68 == 0)
        {
            r3->unk2 = r6;
            r3->unk0 = r9;
            if (r6 > 240)
                r3->unk2 |= 0x100;
        }
        //_080A685E
        r4 = &gUnknown_03002230.unk550[r7 / 4];
        if (gUnknown_03002230.unk10C2[gUnknown_03002230.unk15DC] != 0)
        {
            r4->unk5 &= 0xF;
            r4->unk5 |= 0x80;
            r4->unk2 += (gUnknown_03002230.unk10C2[gUnknown_03002230.unk15DC] & 1) << 1;
        }
    }
    //_080A68AC
    
    r2 = gUnknown_03002230.unk96C & 0xF00;
    if (r2 != 0xF00)
    {
        r2 = (r2 << 4) |  (gUnknown_03002230.unk1723 + (gUnknown_03002230.unk1724 << 8));
    }
    //_080A6996
}
*/

void sub_080A69FC(u8 a)
{
    u16 *r8 = &gUnknown_03003E74;
    u16 r4 = gUnknown_02010990;
    u8 r6 = gUnknown_03002230.unkF92[a];
    
    gUnknown_03002230.unk964 = r6;
    gUnknown_03002230.unk961 = gUnknown_03002230.unkED2[a] + gUnknown_03002230.unk1142[a] - gUnknown_03002230.unk958 - 4;
    gUnknown_03002230.unk960 = gUnknown_03002230.unkEE2[a] - gUnknown_03002230.unk952;
    gUnknown_03002230.unk1734 = gUnknown_08169CDA[gUnknown_03002230.unkFB2[a] / 2];
    gUnknown_03002230.unk968 = gUnknown_0816B258[gUnknown_03002230.unkFB2[a] / 2];
    r4 = r4 * 2;
    r4 += gUnknown_03002230.unk968;
    gUnknown_03002230.unk964 = gUnknown_0816B118[r4 / 2] + r6;
    gUnknown_03002230.unk968 = gUnknown_0816AF12[gUnknown_03002230.unk964];
    gUnknown_03003E68 = 0;
    sub_080A61D8();
    sub_080A64F8();
    sub_080A6754();
    *r8 += 12;
}

u32 sub_080A6B14(u8 a)
{
    u16 var;
    u8 i;
    
    for (i = 7, var = a; i != 0; i--)
    {
        var <<= 1;
        if (var & 0x100)
            return i;
    }
    return 0;
}

#ifdef NONMATCHING
void sub_080A6B40(u8 a)
{
    u32 r1 = a;
    u16 r0;
    
    if (r1 > 127)
    {
        register u16 r2 asm("r0") = 0xFF00;
        r1 |= r2;
    }
    r0 = r1 + gUnknown_03002230.unk16C4 - gUnknown_03002230.unk952;
    gUnknown_03002230.unk1892 = (r0 >> 8) & 1;
}
#else
__attribute__((naked))
void sub_080A6B40(u8 a)
{
    asm("push {lr}\n\
	lsl r0, r0, #24\n\
	lsr r1, r0, #24\n\
	cmp r1, #127\n\
	bls _080A6B52\n\
	mov r2, #255\n\
	lsl r2, r2, #8\n\
	add r0, r2, #0\n\
	orr r1, r1, r0\n\
_080A6B52:\n\
	ldr r2, _080A6B78  @ =gUnknown_03002230\n\
	ldr r3, _080A6B7C  @ =0x000016C4\n\
	add r0, r2, r3\n\
	ldrh r0, [r0]\n\
	add r0, r1, r0\n\
	ldr r3, _080A6B80  @ =0x00000952\n\
	add r1, r2, r3\n\
	ldrh r1, [r1]\n\
	sub r0, r0, r1\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #24\n\
	mov r1, #1\n\
	and r0, r0, r1\n\
	ldr r1, _080A6B84  @ =0x00001892\n\
	add r2, r2, r1\n\
	strh r0, [r2]\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080A6B78:\n\
	.4byte gUnknown_03002230\n\
_080A6B7C:\n\
	.4byte 0x000016C4\n\
_080A6B80:\n\
	.4byte 0x00000952\n\
_080A6B84:\n\
	.4byte 0x00001892");
}
#endif

// Copies sprite graphics to VRAM
void sub_080A6B88(void)
{
    const u16 *linkSpriteTiles = (u16 *)gGfx_link4bpp;  // not sure about this being u16

    // Link's head
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCC2 / 2, (void *)(VRAM + 0x10000), 0x40);
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCC4 / 2, (void *)(VRAM + 0x10400), 0x40);

    // Link's body
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCC6 / 2, (void *)(VRAM + 0x10040), 0x40);
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCC8 / 2, (void *)(VRAM + 0x10440), 0x40);

    // Link's shoes? Not really sure what this is
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCCA / 2, (void *)(VRAM + 0x10080), 0x20);
    CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unkCCC / 2, (void *)(VRAM + 0x10480), 0x20);

    // sword
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCB6), (void *)(VRAM + 0x100A0), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCB8), (void *)(VRAM + 0x104A0), 0x40);

    // sheild
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCBA), (void *)(VRAM + 0x100E0), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCBC), (void *)(VRAM + 0x104E0), 0x40);

    // hookshot head
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCBE), (void *)(VRAM + 0x10120), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCC0), (void *)(VRAM + 0x10520), 0x40);

    // rupee
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCD6), (void *)(VRAM + 0x10160), 0x20);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCD8), (void *)(VRAM + 0x10560), 0x20);

    // don't know what this is
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCEC), (void *)(VRAM + 0x10180), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCEE), (void *)(VRAM + 0x10580), 0x40);

    // puzzle block
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCCE), (void *)(VRAM + 0x101C0), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCD0), (void *)(VRAM + 0x105C0), 0x40);

    // received item
    CpuFastCopy((void *)0x0200B0C0, (void *)(VRAM + 0x10880), 0x40);
    CpuFastCopy((void *)0x0200B100, (void *)(VRAM + 0x10C80), 0x40);

    // Zelda's head
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCE2), (void *)(VRAM + 0x10800), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCE4), (void *)(VRAM + 0x10C00), 0x40);

    // Zelda's body
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCE6), (void *)(VRAM + 0x10840), 0x40);
    CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unkCE8), (void *)(VRAM + 0x10C40), 0x40);

    if (gUnknown_03002230.unk1898 != 0)
    {
        // enemies, maybe?

        CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unk18A2 / 2, (void *)(VRAM + 0x12000), 0x40);
        CpuFastCopy(linkSpriteTiles + (gUnknown_03002230.unk18A2 + 0x200) / 2, (void *)(VRAM + 0x12400), 0x40);
        CpuFastCopy(linkSpriteTiles + gUnknown_03002230.unk18A4 / 2, (void *)(VRAM + 0x12040), 0x40);
        CpuFastCopy(linkSpriteTiles + (gUnknown_03002230.unk18A4 + 0x200) / 2, (void *)(VRAM + 0x12440), 0x40);

        CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unk18AA), (void *)(VRAM + 0x120A0), 0x40);
        CpuFastCopy((void *)(0x2000180 + gUnknown_03002230.unk18AA), (void *)(VRAM + 0x124A0), 0x40);
        CpuFastCopy((void *)(0x2000000 + gUnknown_03002230.unk18AC), (void *)(VRAM + 0x120E0), 0x40);
        CpuFastCopy((void *)(0x20000C0 + gUnknown_03002230.unk18AC), (void *)(VRAM + 0x124E0), 0x40);
    }
}

void sub_080A6EC4(void)
{
    if (gUnknown_03002230.unk1B16 != 0)
    {
        if (gUnknown_03002230.unk1B0C == 0)
        {
            CpuFastCopy((void *)0x0200F330, (void *)(VRAM + 0xB000), 0x100);
            CpuFastCopy((void *)0x0200F430, (void *)(VRAM + 0xB200), 0x100);
            CpuFastCopy((void *)0x0200F530, (void *)(VRAM + 0xB400), 0x100);
            CpuFastCopy((void *)0x0200F630, (void *)(VRAM + 0xB600), 0x100);
            CpuFastCopy((void *)0x0200F730, (void *)(VRAM + 0xB100), 0x100);
            CpuFastCopy((void *)0x0200F830, (void *)(VRAM + 0xB300), 0x100);
            CpuFastCopy((void *)0x0200F930, (void *)(VRAM + 0xB500), 0x100);
            CpuFastCopy((void *)0x0200FA30, (void *)(VRAM + 0xB700), 0x100);
        }
        else
        {
            CpuFastCopy((void *)0x0200F330, (void *)(VRAM + 0x13000), 0x100);
            CpuFastCopy((void *)0x0200F430, (void *)(VRAM + 0x13400), 0x100);
            CpuFastCopy((void *)0x0200F530, (void *)(VRAM + 0x13800), 0x100);
            CpuFastCopy((void *)0x0200F630, (void *)(VRAM + 0x13C00), 0x100);
            CpuFastCopy((void *)0x0200F730, (void *)(VRAM + 0x13100), 0x100);
            CpuFastCopy((void *)0x0200F830, (void *)(VRAM + 0x13500), 0x100);
            CpuFastCopy((void *)0x0200F930, (void *)(VRAM + 0x13900), 0x100);
            CpuFastCopy((void *)0x0200FA30, (void *)(VRAM + 0x13D00), 0x100);
        }
        gUnknown_03002230.unk1B16 = 0;
    }
}

void sub_080A7020(void)
{
    if (gUnknown_03002230.unkC90 == 0)
    {
        sub_080A6B88();
        sub_080A7048();
    }
    sub_080A7080();
    sub_080A70BC();
}

void sub_080A7048(void)
{
    CpuFastCopy((void *)(0x02009A00 + gUnknown_03002230.unkCD2), (void *)(VRAM + gUnknown_03002230.unkA3A), 0x400);
}

void sub_080A7080(void)
{
    if (gUnknown_03002230.unk9AE != 0)
    {
        gUnknown_03002230.unk9AE = 0;
        CpuFastCopy((void *)0x0200B180, (void *)(VRAM + 0x8000 + gUnknown_03002230.unkA68), 0x180);
    }
}

void sub_080A70BC(void)
{
    gUnknown_0816B524[gUnknown_03002230.unk9AF]();
}

void sub_080A70E4(void)
{
}

void sub_080A70E8(void)
{
}

void sub_080A70EC(void)
{
}

void sub_080A70F0(void)
{
}

void sub_080A70F4(void)
{
}

void sub_080A70F8(void)
{
}

void sub_080A70FC(void)
{
}

void sub_080A7100(void)
{
}

void sub_080A7104(void)
{
}

void sub_080A7108(void)
{
}

void sub_080A710C(void)
{
}

void sub_080A7110(void)
{
}

void sub_080A7114(void)
{
}

void sub_080A7118(void)
{
}

void sub_080A711C(void)
{
    CpuFastCopy((void *)0x02032000, (void *)VRAM, 0x800);
    CpuFastCopy((void *)0x02034000, (void *)(VRAM + 0x800), 0x800);
}

void sub_080A714C(void)
{
    CpuFastCopy((void *)0x02032000, (void *)(VRAM + 0x1000), 0x800);
    CpuFastCopy((void *)0x02034000, (void *)(VRAM + 0x1800), 0x800);
}

void sub_080A717C(void)
{
    CpuFastCopy((void *)0x02032000, (void *)(VRAM + 0x2000), 0x800);
    CpuFastCopy((void *)0x02034000, (void *)(VRAM + 0x2800), 0x800);
}

void sub_080A71AC(void)
{
    CpuFastCopy((void *)0x02032000, (void *)(VRAM + 0x3000), 0x800);
    CpuFastCopy((void *)0x02034000, (void *)(VRAM + 0x3800), 0x800);
    CpuFastCopy((void *)(0x02009A00 + gUnknown_03002230.unkCD2), (void *)(VRAM + gUnknown_03002230.unkA3A), 0x400);
}

void sub_080A720C(void)
{
}

void sub_080A7210(void)
{
}

void sub_080A7214(void)
{
}

void sub_080A7218(void)
{
}

void sub_080A721C(void)
{
}

void sub_080A7220(void)
{
}

void sub_080A7224(void)
{
}

// This function is too hard.
#ifdef NONMATCHING
void sub_080A7228(void)
{
    u32 r8;
    u32 r0;
    s16 a, b;

    if (gUnknown_02002353 != 0)
    {
        if (gUnknown_0200234E >= 0)
        {
            gUnknown_02002353--;
            gUnknown_0200234E++;
            if (!(gUnknown_03002230.unk996 & 3))
                sub_0812A324(38, 0);
        }
        else
        {
            *(u8 *)&gUnknown_0200234E = 128;  // out of range?
            gUnknown_02002353 = 0;
        }
    }
    //_080A7280
    a = gUnknown_02002342;
    b = gUnknown_02002340;
    if (a == b)
    {
        gUnknown_03002230.unkECF = 0;
    }
    //_080A72A8
    else
    {
        if (a < b)
        {
            a++;
            if (a > 0x3E7)
            {
                gUnknown_02002340 = 0x3E7;
                a = 0x3E7;
            }
        }
        //_080A72C4
        else
        {
            a--;
            if (a < 0)
            //if (gUnknown_02002342 < 1)
            {
                gUnknown_02002340 = 0;
                a = 0;
            }
        }
        gUnknown_02002342 = a;
        //_080A72D4
        if (!(gUnknown_03002230.unkECF++ & 7))
            sub_0812A324(115, 0);
    }
    //_080A72F4
    if (gUnknown_02002355 != 0)
    {
        gUnknown_02002355--;
        if (gUnknown_02002323 != gUnknown_0816B588[gUnknown_02002350])
            gUnknown_02002323++;
    }
    if (gUnknown_02002356 != 0)
    {
        gUnknown_02002356--;
        if (gUnknown_02002357 != gUnknown_0816B598[gUnknown_02002351])
            gUnknown_02002357++;
    }
    //_080A7338
    if (gUnknown_02002320 != 0 && (gUnknown_02002320 & 1))
    {
        gUnknown_02002320++;
        sub_080A9E38();
        sub_080AA920();
        sub_080AA874();
        gUnknown_03002230.unkA4C = 0;
    }
    //_080A7362
    if (gUnknown_03002230.unk1770 == 0 && gUnknown_02002352 == 0 && gUnknown_0200234D < gUnknown_0816B645[gUnknown_0200234C][0])
    {
        if (gUnknown_03002230.unkB72 == 0)
        {
            gUnknown_03002230.unkB72 = 32;
            sub_0812A324(80, 0);
        }
        gUnknown_03002230.unkB72--;
    }
    //_080A73A8
    r8 = 0;
    r0 = gUnknown_03002230.unkA56;  // maybe?
    if (gUnknown_03002230.unkA56 == 0)
    {
        if (gUnknown_02002352 == 0)
        {
            r8 = 1;
        }
        else
        //_080A7414
        {
            if (gUnknown_0200234D < gUnknown_0200234C)
            {
                gUnknown_0200234D += 8;
                sub_0812A324(111, 0);
                if (gUnknown_0200234D >= gUnknown_0200234C)
                    gUnknown_0200234D = gUnknown_0200234C;
                gUnknown_02002352 -= 8;
                gUnknown_03002230.unkA56++;
                gUnknown_03002230.unkA54 = 7;
            }
            //_080A7458
            else
            {
                gUnknown_0200234D = gUnknown_0200234C;
                gUnknown_02002352 = 0; //r8;
                r8 = 1;
            }
        }
        //_080A7462
        // does something strange here
        // stores 0 in r0, then compares it to 0, WTF?
    }
    //_080A7468
    if (r0 != 0)  // dunno
    {
        //gUnknown_03002230.unk97C = 0xFFFF;
        sub_080A75FC();
        sub_080A797C();
        gUnknown_03002230.unk9AE++;
    }
    if (r8 != 0)
    {
        //gUnknown_03002230.unk97C = 0xFFFF;
        sub_080A7588();
        gUnknown_03002230.unk9AE++;
    }
}
#else
__attribute__((naked))
void sub_080A7228(void)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r9\n\
	mov r6, r8\n\
	push {r6,r7}\n\
	ldr r4, _080A7268  @ =gUnknown_02002353\n\
	ldrb r2, [r4]\n\
	cmp r2, #0\n\
	beq _080A7280\n\
	ldr r1, _080A726C  @ =gUnknown_0200234E\n\
	ldrb r3, [r1]\n\
	mov r0, #0\n\
	ldrsb r0, [r1, r0]\n\
	cmp r0, #0\n\
	blt _080A7278\n\
	sub r0, r2, #1\n\
	strb r0, [r4]\n\
	add r0, r3, #1\n\
	strb r0, [r1]\n\
	ldr r0, _080A7270  @ =gUnknown_03002230\n\
	ldr r1, _080A7274  @ =0x00000996\n\
	add r0, r0, r1\n\
	ldrb r1, [r0]\n\
	mov r0, #3\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	bne _080A7280\n\
	mov r0, #38\n\
	mov r1, #0\n\
	bl sub_0812A324\n\
	b _080A7280\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080A7268:\n\
	.4byte gUnknown_02002353\n\
_080A726C:\n\
	.4byte gUnknown_0200234E\n\
_080A7270:\n\
	.4byte gUnknown_03002230\n\
_080A7274:\n\
	.4byte 0x00000996\n\
_080A7278:\n\
	mov r0, #128\n\
	strb r0, [r1]\n\
	mov r0, #0\n\
	strb r0, [r4]\n\
_080A7280:\n\
	ldr r0, _080A7298  @ =gUnknown_02002342\n\
	ldrh r1, [r0]\n\
	ldr r2, _080A729C  @ =gUnknown_02002340\n\
	ldrh r0, [r2]\n\
	cmp r1, r0\n\
	bne _080A72A8\n\
	ldr r0, _080A72A0  @ =gUnknown_03002230\n\
	ldr r2, _080A72A4  @ =0x00000ECF\n\
	add r0, r0, r2\n\
	mov r1, #0\n\
	strb r1, [r0]\n\
	b _080A72F4\n\
_080A7298:\n\
	.4byte gUnknown_02002342\n\
_080A729C:\n\
	.4byte gUnknown_02002340\n\
_080A72A0:\n\
	.4byte gUnknown_03002230\n\
_080A72A4:\n\
	.4byte 0x00000ECF\n\
_080A72A8:\n\
	cmp r1, r0\n\
	bcs _080A72C4\n\
	add r0, r1, #1\n\
	lsl r0, r0, #16\n\
	lsr r1, r0, #16\n\
	ldr r0, _080A72C0  @ =0x000003E7\n\
	cmp r1, r0\n\
	bls _080A72D4\n\
	strh r0, [r2]\n\
	add r1, r0, #0\n\
	b _080A72D4\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080A72C0:\n\
	.4byte 0x000003E7\n\
_080A72C4:\n\
	sub r0, r1, #1\n\
	lsl r0, r0, #16\n\
	lsr r1, r0, #16\n\
	cmp r0, #0\n\
	bge _080A72D4\n\
	mov r0, #0\n\
	strh r0, [r2]\n\
	mov r1, #0\n\
_080A72D4:\n\
	ldr r0, _080A73C4  @ =gUnknown_02002342\n\
	strh r1, [r0]\n\
	ldr r0, _080A73C8  @ =gUnknown_03002230\n\
	ldr r1, _080A73CC  @ =0x00000ECF\n\
	add r0, r0, r1\n\
	ldrb r1, [r0]\n\
	add r2, r1, #1\n\
	strb r2, [r0]\n\
	mov r0, #7\n\
	and r1, r1, r0\n\
	cmp r1, #0\n\
	bne _080A72F4\n\
	mov r0, #115\n\
	mov r1, #0\n\
	bl sub_0812A324\n\
_080A72F4:\n\
	ldr r1, _080A73D0  @ =gUnknown_02002355\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _080A7316\n\
	sub r0, r0, #1\n\
	strb r0, [r1]\n\
	ldr r2, _080A73D4  @ =gUnknown_02002323\n\
	ldr r1, _080A73D8  @ =gUnknown_0816B588\n\
	ldr r0, _080A73DC  @ =gUnknown_02002350\n\
	ldrb r0, [r0]\n\
	add r0, r0, r1\n\
	ldrb r1, [r2]\n\
	ldrb r0, [r0]\n\
	cmp r1, r0\n\
	beq _080A7316\n\
	add r0, r1, #1\n\
	strb r0, [r2]\n\
_080A7316:\n\
	ldr r1, _080A73E0  @ =gUnknown_02002356\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _080A7338\n\
	sub r0, r0, #1\n\
	strb r0, [r1]\n\
	ldr r2, _080A73E4  @ =gUnknown_02002357\n\
	ldr r1, _080A73E8  @ =gUnknown_0816B598\n\
	ldr r0, _080A73EC  @ =gUnknown_02002351\n\
	ldrb r0, [r0]\n\
	add r0, r0, r1\n\
	ldrb r1, [r2]\n\
	ldrb r0, [r0]\n\
	cmp r1, r0\n\
	beq _080A7338\n\
	add r0, r1, #1\n\
	strb r0, [r2]\n\
_080A7338:\n\
	ldr r2, _080A73F0  @ =gUnknown_02002320\n\
	ldrb r1, [r2]\n\
	cmp r1, #0\n\
	beq _080A7362\n\
	mov r0, #1\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _080A7362\n\
	add r0, r1, #1\n\
	strb r0, [r2]\n\
	bl sub_080A9E38\n\
	bl sub_080AA920\n\
	bl sub_080AA874\n\
	ldr r0, _080A73C8  @ =gUnknown_03002230\n\
	ldr r2, _080A73F4  @ =0x00000A4C\n\
	add r0, r0, r2\n\
	mov r1, #0\n\
	strh r1, [r0]\n\
_080A7362:\n\
	ldr r0, _080A73C8  @ =gUnknown_03002230\n\
	ldr r2, _080A73F8  @ =0x00001770\n\
	add r1, r0, r2\n\
	ldrb r1, [r1]\n\
	mov r9, r0\n\
	cmp r1, #0\n\
	bne _080A73A8\n\
	ldr r0, _080A73FC  @ =gUnknown_02002352\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080A73A8\n\
	ldr r2, _080A7400  @ =gUnknown_0200234D\n\
	ldr r1, _080A7404  @ =gUnknown_0816B645\n\
	ldr r0, _080A7408  @ =gUnknown_0200234C\n\
	ldrb r0, [r0]\n\
	lsr r0, r0, #3\n\
	add r0, r0, r1\n\
	ldrb r1, [r2]\n\
	ldrb r0, [r0]\n\
	cmp r1, r0\n\
	bcs _080A73A8\n\
	ldr r4, _080A740C  @ =0x00000B72\n\
	add r4, r4, r9\n\
	ldrh r0, [r4]\n\
	cmp r0, #0\n\
	bne _080A73A2\n\
	mov r0, #32\n\
	strh r0, [r4]\n\
	mov r0, #80\n\
	mov r1, #0\n\
	bl sub_0812A324\n\
_080A73A2:\n\
	ldrh r0, [r4]\n\
	sub r0, r0, #1\n\
	strh r0, [r4]\n\
_080A73A8:\n\
	mov r0, #0\n\
	mov r8, r0\n\
	ldr r6, _080A7410  @ =0x00000A56\n\
	add r6, r6, r9\n\
	ldrb r0, [r6]\n\
	cmp r0, #0\n\
	bne _080A7468\n\
	ldr r5, _080A73FC  @ =gUnknown_02002352\n\
	ldrb r0, [r5]\n\
	cmp r0, #0\n\
	bne _080A7414\n\
	mov r1, #1\n\
	mov r8, r1\n\
	b _080A7462\n\
_080A73C4:\n\
	.4byte gUnknown_02002342\n\
_080A73C8:\n\
	.4byte gUnknown_03002230\n\
_080A73CC:\n\
	.4byte 0x00000ECF\n\
_080A73D0:\n\
	.4byte gUnknown_02002355\n\
_080A73D4:\n\
	.4byte gUnknown_02002323\n\
_080A73D8:\n\
	.4byte gUnknown_0816B588\n\
_080A73DC:\n\
	.4byte gUnknown_02002350\n\
_080A73E0:\n\
	.4byte gUnknown_02002356\n\
_080A73E4:\n\
	.4byte gUnknown_02002357\n\
_080A73E8:\n\
	.4byte gUnknown_0816B598\n\
_080A73EC:\n\
	.4byte gUnknown_02002351\n\
_080A73F0:\n\
	.4byte gUnknown_02002320\n\
_080A73F4:\n\
	.4byte 0x00000A4C\n\
_080A73F8:\n\
	.4byte 0x00001770\n\
_080A73FC:\n\
	.4byte gUnknown_02002352\n\
_080A7400:\n\
	.4byte gUnknown_0200234D\n\
_080A7404:\n\
	.4byte gUnknown_0816B645\n\
_080A7408:\n\
	.4byte gUnknown_0200234C\n\
_080A740C:\n\
	.4byte 0x00000B72\n\
_080A7410:\n\
	.4byte 0x00000A56\n\
_080A7414:\n\
	ldr r4, _080A744C  @ =gUnknown_0200234D\n\
	ldr r7, _080A7450  @ =gUnknown_0200234C\n\
	ldrb r0, [r4]\n\
	ldrb r1, [r7]\n\
	cmp r0, r1\n\
	bcs _080A7458\n\
	add r0, r0, #8\n\
	strb r0, [r4]\n\
	mov r0, #111\n\
	mov r1, #0\n\
	bl sub_0812A324\n\
	ldrb r1, [r7]\n\
	ldrb r0, [r4]\n\
	cmp r0, r1\n\
	bcc _080A7436\n\
	strb r1, [r4]\n\
_080A7436:\n\
	ldrb r0, [r5]\n\
	sub r0, r0, #8\n\
	strb r0, [r5]\n\
	ldrb r0, [r6]\n\
	add r0, r0, #1\n\
	strb r0, [r6]\n\
	ldr r1, _080A7454  @ =0x00000A54\n\
	add r1, r1, r9\n\
	mov r0, #7\n\
	strb r0, [r1]\n\
	b _080A7468\n\
_080A744C:\n\
	.4byte gUnknown_0200234D\n\
_080A7450:\n\
	.4byte gUnknown_0200234C\n\
_080A7454:\n\
	.4byte 0x00000A54\n\
_080A7458:\n\
	strb r1, [r4]\n\
	mov r2, r8\n\
	strb r2, [r5]\n\
	mov r0, #1\n\
	mov r8, r0\n\
_080A7462:\n\
	mov r0, #0\n\
	cmp r0, #0\n\
	beq _080A7482\n\
_080A7468:\n\
	ldr r1, _080A74AC  @ =0x0000097C\n\
	add r1, r1, r9\n\
	ldr r0, _080A74B0  @ =0x0000FFFF\n\
	strh r0, [r1]\n\
	bl sub_080A75FC\n\
	bl sub_080A797C\n\
	ldr r1, _080A74B4  @ =0x000009AE\n\
	add r1, r1, r9\n\
	ldrb r0, [r1]\n\
	add r0, r0, #1\n\
	strb r0, [r1]\n\
_080A7482:\n\
	mov r1, r8\n\
	cmp r1, #0\n\
	beq _080A74A0\n\
	ldr r4, _080A74B8  @ =gUnknown_03002230\n\
	ldr r2, _080A74AC  @ =0x0000097C\n\
	add r1, r4, r2\n\
	ldr r0, _080A74B0  @ =0x0000FFFF\n\
	strh r0, [r1]\n\
	bl sub_080A7588\n\
	ldr r0, _080A74B4  @ =0x000009AE\n\
	add r4, r4, r0\n\
	ldrb r0, [r4]\n\
	add r0, r0, #1\n\
	strb r0, [r4]\n\
_080A74A0:\n\
	pop {r3,r4}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n\
_080A74AC:\n\
	.4byte 0x0000097C\n\
_080A74B0:\n\
	.4byte 0x0000FFFF\n\
_080A74B4:\n\
	.4byte 0x000009AE\n\
_080A74B8:\n\
	.4byte gUnknown_03002230");
}
#endif

#ifdef NONMATCHING
void sub_080A74BC(void)
{
    u16 r2;

    if (gUnknown_02002320 != 0)
    {
        u32 r1;
        if (gUnknown_02002320 == 1 || gUnknown_02002320 == 2)
        {
            r1 = (gUnknown_02002357 == 0) ? 1 : 2;
        }
        else
        {
            *(u16 *)0x0200B198 = 0x8086;
            *(u16 *)0x0200B19A = 0x8087;
            r1 = (gUnknown_02002357 == 0) ? 3 : 4;
        }
        gUnknown_02002320 = r1;
    }
    //_080A7500
    r2 = gUnknown_03002230.unkA4E + gUnknown_03002230.unkA4F;
    if (r2 != 0)
    {
        u16 *ptr;
        u8 r3 = gUnknown_0200231F[r2];

        if (r2 == 4)
            r3 = 1;
        ptr = gUnknown_0816B5A8[r2 - 1];
        *(u16 *)0x0200B1F8 = ptr[r3 * 4 + 0];
        *(u16 *)0x0200B1FA = ptr[r3 * 4 + 1];
        *(u16 *)0x0200B238 = ptr[r3 * 4 + 2];
        *(u16 *)0x0200B23A = ptr[r3 * 4 + 3];
    }
}
#else
__attribute__((naked))
void sub_080A74BC(void)
{
    asm("push {lr}\n\
	ldr r0, _080A74D8  @ =gUnknown_02002320\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	beq _080A7500\n\
	cmp r0, #2\n\
	bhi _080A74E0\n\
	mov r1, #2\n\
	ldr r0, _080A74DC  @ =gUnknown_02002357\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080A74FC\n\
	mov r1, #1\n\
	b _080A74FC\n\
_080A74D8:\n\
	.4byte gUnknown_02002320\n\
_080A74DC:\n\
	.4byte gUnknown_02002357\n\
_080A74E0:\n\
	ldr r1, _080A755C  @ =gUnknown_0200B198\n\
	ldr r2, _080A7560  @ =0x00008086\n\
	add r0, r2, #0\n\
	strh r0, [r1]\n\
	add r1, r1, #2\n\
	ldr r3, _080A7564  @ =0x00008087\n\
	add r0, r3, #0\n\
	strh r0, [r1]\n\
	mov r1, #4\n\
	ldr r0, _080A7568  @ =gUnknown_02002357\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	bne _080A74FC\n\
	mov r1, #3\n\
_080A74FC:\n\
	ldr r0, _080A756C  @ =gUnknown_02002320\n\
	strb r1, [r0]\n\
_080A7500:\n\
	ldr r0, _080A7570  @ =gUnknown_03002230\n\
	ldr r2, _080A7574  @ =0x00000A4E\n\
	add r1, r0, r2\n\
	ldrb r1, [r1]\n\
	lsl r1, r1, #24\n\
	asr r1, r1, #24\n\
	ldr r3, _080A7578  @ =0x00000A4F\n\
	add r0, r0, r3\n\
	ldrb r0, [r0]\n\
	lsl r0, r0, #24\n\
	asr r0, r0, #24\n\
	lsl r0, r0, #8\n\
	add r1, r1, r0\n\
	lsl r1, r1, #16\n\
	lsr r1, r1, #16\n\
	add r2, r1, #0\n\
	cmp r1, #0\n\
	beq _080A7556\n\
	ldr r3, _080A757C  @ =gUnknown_0200231F\n\
	add r0, r1, r3\n\
	ldrb r3, [r0]\n\
	cmp r1, #4\n\
	bne _080A7530\n\
	mov r3, #1\n\
_080A7530:\n\
	ldr r1, _080A7580  @ =gUnknown_0816B5A8\n\
	sub r0, r2, #1\n\
	lsl r0, r0, #2\n\
	add r0, r0, r1\n\
	ldr r0, [r0]\n\
	ldr r2, _080A7584  @ =gUnknown_0200B1F8\n\
	lsl r1, r3, #3\n\
	add r1, r1, r0\n\
	ldrh r0, [r1]\n\
	strh r0, [r2]\n\
	add r2, r2, #2\n\
	ldrh r0, [r1, #2]\n\
	strh r0, [r2]\n\
	add r2, r2, #62\n\
	ldrh r0, [r1, #4]\n\
	strh r0, [r2]\n\
	add r2, r2, #2\n\
	ldrh r0, [r1, #6]\n\
	strh r0, [r2]\n\
_080A7556:\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080A755C:\n\
	.4byte gUnknown_0200B198\n\
_080A7560:\n\
	.4byte 0x00008086\n\
_080A7564:\n\
	.4byte 0x00008087\n\
_080A7568:\n\
	.4byte gUnknown_02002357\n\
_080A756C:\n\
	.4byte gUnknown_02002320\n\
_080A7570:\n\
	.4byte gUnknown_03002230\n\
_080A7574:\n\
	.4byte 0x00000A4E\n\
_080A7578:\n\
	.4byte 0x00000A4F\n\
_080A757C:\n\
	.4byte gUnknown_0200231F\n\
_080A7580:\n\
	.4byte gUnknown_0816B5A8\n\
_080A7584:\n\
	.4byte gUnknown_0200B1F8");
}
#endif
