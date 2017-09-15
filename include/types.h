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
