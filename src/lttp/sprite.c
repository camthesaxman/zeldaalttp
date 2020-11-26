#include "global.h"

void Sprite_ExecuteSingleLong(u8 r0)
{
    Sprite_ExecuteSingle(r0);
}

void Sprite_ExecuteSingle(u8 r0)
{
    u8 mode;

    mode = gRam.unkFA2[r0];
    if (mode == 0)
    {
        Sprite_Inactive(r0);
    }
    else
    {
        sub_080C1D70(r0);
        if (mode == 9)
        {
            SpriteActive_Main(r0);
        }
        else
        {
            gUnknown_08171D88[mode](r0);
        }
    }
}

void SpriteActive_MainLong(u8 r0)
{
    SpriteActive_Main(r0);
}

void SpriteActive_Main(u8 idx)
{
    SpriteActive_Table[gRam.unkFF2[idx]](idx);
}

u8 Sprite3_CheckIfActive(u8 idx)
{
    u8 result;

    if (gRam.unkFA2[idx] == 9)
    {
        result = Sprite3_CheckIfActive_Permissive(idx);
    }
    else
    {
        result = 1;
    }
    return result;
}

u8 Sprite3_CheckIfActive_Permissive(u8 idx)
{
    if (gRam.unk1605)
        return 1;
    if (gRam.unk9AD)
        return 1;
    if ((gRam.unkE75[idx] & 0x80))
        return 0;
    if (!gRam.unk10D2[idx])
        return 0;
    return 1;
}

void Sprite_SpawnImmediatelySmashedTerrain(u8 r0)
{
    u8 uVar1;
    u8 uVar2;
    s8 uVar3;

    uVar2 = gRam.unk179E;
    uVar1 = gRam.unk15F6;
    uVar3 = Sprite_SpawnThrowableTerrainSilently(r0);
    if (uVar3 >= 0)
    {
        sub_080C5138((u8)uVar3);
    }
    gRam.unk179E = uVar2;
    gRam.unk15F6 = uVar1;
}

void Sprite_SpawnThrowableTerrain(u8 r0)
{
    Sound_SetSfxPanWithPlayerCoords(10);
    Sprite_SpawnThrowableTerrainSilently(r0);
}

void sub_080C351C(u8 r0)
{
    gRam.unk1152[r0] = 0;
    sub_080C3540(r0);
}

void sub_080C3540(u8 r0)
{
    gRam.unkF22[r0] = 0;
    gRam.unkF12[r0] = 0;
}

void Sprite3_Move(u8 r0)
{
    u8 temp;

    temp = Sprite3_MoveHoriz(r0);
    Sprite3_MoveVert(temp);
}

u8 Sprite3_MoveHoriz(u8 r0)
{
    Sprite3_MoveVert(((r0 << 0x18) + 0x10000000U) >> 0x18);
    return gRam.unk15DC;
}

void sub_080C35A4(u8 r0)
{
    gRam.unkEE2[r0] += 8;
}

void sub_080C35C0(u8 r0)
{
    sub_080C35E0(((r0 << 0x18) + 0x10000000U) >> 0x18);
    sub_080C35E0(r0);
}

void sub_080C35E0(u8 r0)
{
    gRam.unkED2[r0] += 8;
}

void sub_080C35FC(u8 r0, u8 r1)
{
    sub_080C2CB4(r0, r1);
    gRam.unkF12[r0] = gRam.unk960;
    gRam.unkF22[r0] = gRam.unk961;
}

u16 sub_080C3640(u8 r0)
{
    s16 temp;

    temp = gRam.unk968 - (gRam.unkEE2[r0] + gRam.unkF02[r0] * 0x100);

    gRam.unk97D = temp;
    return temp < 0;
}

u16 sub_080C368C(u8 r0)
{
    s16 temp;

    temp = gRam.unk96C - (gRam.unkED2[r0] + gRam.unkEF2[r0] * 0x100);

    gRam.unk97C = temp;
    return temp < 0;
}

u16 sub_080C36D8(u8 r0)
{
    s16 temp;

    temp = (gRam.unk16C4 + gRam.unk16C5 * 0x100) - (gRam.unkEE2[r0] + gRam.unkF02[r0] * 0x100);

    gRam.unk97D = temp;
    return temp < 0;
}

void sub_080C3734(u8 r0)
{
    gRam.unkEE2[r0] += 8;
    sub_080C3758(r0);
}

void sub_080C3758(u8 r0)
{
    gRam.unk1172[r0] += 1;
}

void sub_080C3774(u8 r0)
{
    gRam.unk1002[r0] = 0xfe;
}

void Sprite_WallInducedSpeedInversion(u8 r0)
{
    if ((gRam.unk1042[r0] & 3) != 0)
    {
        Sprite_InvertHorizSpeed(r0);
    }
    if ((gRam.unk1042[r0] & 12) != 0)
    {
        Sprite_InvertVertSpeed(r0);
    }
}

void Sprite_Invert_XY_Speeds(u8 r0)
{
    Sprite_InvertVertSpeed(r0);
    Sprite_InvertHorizSpeed(r0);
}

void Sprite_Halve_XY_Speeds(u8 r0)
{
    gRam.unkF22[r0] = ROR(gRam.unkF22[r0], 1);
    gRam.unkF12[r0] = ROR(gRam.unkF12[r0], 1);
}
