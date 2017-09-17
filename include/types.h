struct BGConfig
{
    u16 bgcnt;
    u16 hofs;
    u16 vofs;
    u16 unk6;
    void *src;
};

struct GPURegConfig
{
    /*0x00*/ u16 dispCnt;
    /*0x02*/ u8 filler02[6];
    /*0x08*/ struct BGConfig bgConfig[4];
    /*0x38*/ u16 bg2pa;
    /*0x3A*/ u16 bg2pb;
    /*0x3C*/ u16 bg2pc;
    /*0x3E*/ u16 bg2pd;
    /*0x40*/ u16 bg2xl;
    /*0x42*/ u16 bg2xh;
    /*0x44*/ u16 bg2yl;
    /*0x46*/ u16 bg2yh;
    /*0x48*/ u16 bg3pa;
    /*0x4A*/ u16 bg3pb;
    /*0x4C*/ u16 bg3pc;
    /*0x4E*/ u16 bg3pd;
    /*0x50*/ u16 bg3xl;
    /*0x52*/ u16 bg3xh;
    /*0x54*/ u16 bg3yl;
    /*0x56*/ u16 bg3yh;
    /*0x58*/ u16 win0h;
    /*0x5A*/ u16 win1h;
    /*0x5C*/ u16 win0v;
    /*0x5E*/ u16 win1v;
    /*0x60*/ u16 winin;
    /*0x62*/ u16 winout;
    /*0x64*/ u16 mosaic;
    /*0x66*/ u16 bldcnt;
    /*0x68*/ u16 bldalpha;
    /*0x6A*/ u16 bldy;
};

struct DmaStruct
{
    u8 filler0[10];
    u16 unkA;
};

struct UnknownStruct2
{
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
};

struct UnknownStruct3
{
    u16 unk0;
    u8 filler2[0x2002];
};

struct UnknownStruct4
{
    u8 unk0;
    void *src;
    void *dest;
    u32 dmaCnt;
};

struct UnknownStruct5
{
    u8 filler0[8];
    void (*unk8)(void);
};

struct UnknownStruct6
{
    u16 unk0;
    u8 unk2;
    /*
    u8 unk3_0:4;
    u8 unk3_4:3;
    u8 unk3_7:1;
    */
    u8 unk3;
};

struct UnknownStruct7
{
    u8 filler0[0x952];
    u16 unk952;
    u8 filler954[4];
    u8 unk958;
    u8 filler959[7];
    u8 unk960;
    u8 unk961;
    u8 filler962[2];
    s16 unk964;
    u8 filler966[2];
    u16 unk968;
    u8 filler96A[0x12];
    u16 unk97C;
    u8 unk97E[0x18];
    u8 unk996;
    u8 filler997[0x17];
    u8 unk9AE;
    u8 unk9AF;
    u8 filler9B0[0x8A];
    u16 unkA3A;
    u8 fillerA3C[0x10];
    u16 unkA4C;
    s8 unkA4E;
    s8 unkA4F;
    u8 fillerA50[4];
    u8 unkA54;
    u8 fillerA55;
    u8 unkA56;
    u8 fillerA57[0x11];
    u16 unkA68;
    u8 fillerA6A[0x108];
    u16 unkB72;
    u8 fillerB74[0x11C];
    u16 unkC90;
    u8 fillerC92[0x24];
    u16 unkCB6;
    u16 unkCB8;
    u16 unkCBA;
    u16 unkCBC;
    u16 unkCBE;
    u16 unkCC0;
    u16 unkCC2;
    u16 unkCC4;
    u16 unkCC6;
    u16 unkCC8;
    u16 unkCCA;
    u16 unkCCC;
    u16 unkCCE;
    u16 unkCD0;
    u16 unkCD2;
    u8 fillerCD4[2];
    u16 unkCD6;
    u16 unkCD8;
    u8 fillerCDA[8];
    u16 unkCE2;
    u16 unkCE4;
    u16 unkCE6;
    u16 unkCE8;
    u8 fillerCEA[2];
    u16 unkCEC;
    u16 unkCEE;
    u8 fillerCF0[0x1DF];
    u8 unkECF;
    u8 fillerED0[2];
    u8 unkED2[0x10];
    u8 unkEE2[0xB0];
    u8 unkF92[0x20];
    u8 unkFB2[0x190];
    u8 unk1142[0x582];
    u16 unk16C4;
    u8 filler16C6[0x6E];
    u8 unk1734;
    u8 filler1735[0x3B];
    u8 unk1770;
    u8 filler1771[0x121];
    u16 unk1892;
    u8 filler1894[4];
    u8 unk1898;
    u8 filler189A[8];
    u16 unk18A2;
    u16 unk18A4;
    u8 filler18A6[4];
    u16 unk18AA;
    u16 unk18AC;
    u8 filler18AE[0x25E];
    u8 unk1B0C;
    u8 filler1B0D[9];
    u8 unk1B16;
};
