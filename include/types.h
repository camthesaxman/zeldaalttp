struct BGConfig
{
    /*0x00*/ u16 bgcnt;
    /*0x02*/ u16 hofs;
    /*0x04*/ u16 vofs;
    /*0x06*/ u16 unk6;
    /*0x08*/ void *mapBuf;
};

struct GPURegConfig
{
    /*0x00*/ u16 dispCnt;
    /*0x02*/ u8 filler02[6];
    /*0x08*/ struct BGConfig bgConfig[4];  // [1] = 0x14, [2] = 0x20, [3] = 0x2C
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
    /*0x00*/ u8 unk0;
    /*0x04*/ void *src;
    /*0x08*/ void *dest;
    /*0x0C*/ u32 dmaCnt;
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

struct UnknownStruct8
{
    u8 unk0;
    u8 filler1[1];
    u16 unk2:9;
    u8 filler4[1];
    u8 unk5;
};

typedef union {
    u16 half;
    struct {
        u8 lo;
        s8 hi;
    } __attribute__((packed)) b;
} __attribute__((packed)) SplitHalf;

struct UnknownStruct7
{
    u8 filler0[0x544];
    u8 unk544;
    u8 filler545[1];
    u8 unk546;
    u8 unk547;
    u8 filler548[0x550-0x548];
    struct UnknownStruct8 unk550[2];  // no idea of the length of this array
    u8 filler560[0x3F2];
    u16 unk952;
    u8 filler954[4];
    u16 unk958;
    u8 filler95A[6];
    u8 unk960;
    u8 unk961;
    u8 filler962[2];
    s16 unk964;
    u8 filler966[2];
    s16 unk968;
    u8 filler96A[2];
    u16 unk96C;
    u8 filler96E[0xE];
    u8 unk97C;
    s8 unk97D;
    u8 unk97E[0x10];
    s8 unk98E;
    u8 filler98F[7];
    u8 unk996;
    u8 filler997[0x15];
    u8 unk9AC;
    u8 unk9AD;
    u8 unk9AE;
    u8 unk9AF;
    u8 filler9B0[0x2];
    s8 unk9B2;
    u8 filler9B3[0x5D];
    u8 unkA10;
    u8 fillerA11[0x29];
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
    u8 fillerA6A[0x3E];
    u16 unkAA8;
    u8 fillerAAA[0xC8];
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
    u8 fillerCF0[0xCF8-0xCF0];
    u16 unkCF8;
    u8 unkCFA[0x9A];
    u8 unkD94[0x23];
    u8 unkDB7;
    u8 fillerDB8[0x98];
    u8 fillerE50[0x25];
    u8 unkE75[0x10];
    u8 unkE85[0x4A];
    u8 unkECF;
    u8 fillerED0[2];
    u8 unkED2[0x10];
    u8 unkEE2[0x10];
    u8 unkEF2[0x10];
    u8 unkF02[0x10];
    u8 unkF12[0x10];
    u8 unkF22[0x30];
    u8 unkF52[0x10];
    u8 unkF62[0x30];
    u8 unkF92[0x10];
    u8 unkFA2[0x10];
    u8 unkFB2[0x10];
    u8 unkFC2[0x30];
    u8 unkFF2[0x10];
    u8 unk1002[0x30];
    u8 unk1032[0x10];
    u8 unk1042[0x40];
    u8 unk1082[0x40];
    u8 unk10C2[0x10];
    u8 unk10D2[0x10];
    u8 unk10E2[0x10];
    u8 unk10F2[0x30];
    u8 unk1122[0x20];
    s8 unk1142[0x10];
    u8 unk1152[0x20];
    u8 unk1172[0x20];
    u8 unk1192[0x40];
    u8 unk11D2[0x1D];
    u8 unk11EF;
    u8 filler11F0[0x1E];
    u8 unk120E[0x1E];
    u8 unk122C[0x1E];
    u8 unk124A[0x1E];
    u8 unk1268[0x96];
    u8 unk12FE[0x1E];
    u8 unk131C[0x2C0];
    u8 unk15DC;
    u8 unk15DD;
    u16 unk15DE;
    u8 filler15F0[0x16];
    u8 unk15F6;
    u8 unk15F7;
    u8 unk15F8;
    u8 filler15F9[0xC];
    u8 unk1605;
    u8 filler1606[0x24];
    u16 unk162A[0x4B];
    SplitHalf unk16C0;
    u8 filler16C2[2];
    SplitHalf unk16C4;
    u8 filler16C6[0x5D];
    u8 unk1723;
    u8 unk1724;
    u8 filler1725[0xF];
    u8 unk1734;
    u8 filler1735[0x3B];
    u8 unk1770;
    u8 filler1771[0x5];
    u8 unk1776;
    u8 filler1777[0x27];
    u8 unk179E;
    u8 filler179F[0xF3];
    u16 unk1892;
    u8 filler1894[4];
    u8 unk1898;
    u16 unk189A;
    u8 filler189C[6];
    u16 unk18A2;
    u16 unk18A4;
    u8 filler18A6[4];
    u16 unk18AA;
    u16 unk18AC;
    u8 filler18AE[0x1AC8-0x18AE];
    u16 unk1AC8;
    u16 unk1ACA;
    u8 unk1ACC;
    u8 unk1ACD;
    u8 unk1ACE;
    u8 unk1ACF;
    u8 unk1AD0;
    u8 filler1AD1[1];
    u16 unk1AD2;
    u8 filler1AD4[2];
    u16 unk1AD6;
    u8 filler1AD8[0x1ADA-0x1AD8];
    u16 unk1ADA;
    u8 filler1ADC[0x1AE0-0x1ADC];
    u16 unk1AE0;
    u8 unk1AE2;
    u8 unk1AE3;
    u8 filler1AE4[4];
    u8 unk1AE8;
    u8 unk1AE9;
    u8 filler1AEA[6];
    u16 unk1AF0;
    u16 unk1AF2;
    u16 unk1AF4;
    u16 unk1AF6;
    const void *unk1AF8;
    void *unk1AFC;
    void *unk1B00;
    u8 unk1B04;
    u8 unk1B05;
    u8 filler1B06[6];
    u8 unk1B0C;
    u8 filler1B0D[9];
    u8 unk1B16;
};

struct GfxGroup
{
    u32 unk0;
    u8 *dest;
    s32 size;
};

struct Struct0201ED90_child
{
	u8 filler0[0x1D];
	u8 unk1D_0:6;
	u8 unk1D_6:2;
	u8 filler1E[1];
	u8 unk1F_0:6;
	u8 unk1F_6:2;
};

struct BitfieldThing
{
    u8 unk0;
    u8 filler1[1];
    u8 unk2_0:4;
    u8 unk2_4:2;
    u8 unk2_6:2;
    u8 filler3[1];
};

struct NotBitfieldThing
{
    u8 unk0;
    u8 filler1[1];
    u8 unk2;
    u8 filler3[1];
};

struct Struct0201ED90
{
	/*
    u8 unk0;
    u8 filler1[1];
    u8 unk2_0:4;
    u8 unk2_4:2;
    u8 unk2_6:2;  // maybe? game_select.c needs it?
    u8 filler3[1];
    */
    union
    {
		struct BitfieldThing asBitfield;
		struct NotBitfieldThing asNotBitfield;
	} unk0;
    u16 unk4;
    u16 unk6;
    struct Struct0201ED90_child *unk8;
    struct Struct0201ED90_child *unkC;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 filler15[0x20-0x15];
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    // size = 24? possibly multiple structs from an overlay, or sub-structs?
};

struct Struct0202A5E0
{
    u8 unk0;
    u8 filler1[1];
    u8 unk2_0:4;
    u8 unk2_4:2;
    u8 filler3[1];
    u8 unk4_0:5;
    u8 unk4_5:2;
    u8 unk4_7:1;
    u8 filler5[1];
    u16 unk6;
    u8 filler8[0x18-0x8];
    u8 unk18;
    u8 unk19;
    u8 filler1A[1];
    u8 unk1B;
    u8 filler1C[0x24-0x1C];
    void *unk24;
    u8 filler28[0x5A-0x28];
    u8 unk5A;
    u8 filler5B[0x60-0x5B];
    void *unk60;
    u8 filler64[0x83-0x64];
    u8 filler83;
    u8 filler84[0xD4-0x84];
    u8 unkD4;
    u8 unkD5;
    u8 unkD6;
    u8 unkD7;
    u8 fillerD8[0xF8-0xD8];
    u8 unkF8;
    u8 unkF9;
    u8 unkFA;
    u8 fillerFB[0x102-0xFB];
    s8 unk102;
    u8 filler103[2];
    u8 unk105;
    s8 unk106;
    u8 filler107[1];
    u8 unk108;
    u8 unk109;
    u8 filler10A[1];
    u8 unk10B;
    // size = 272 (0x110)?
};
static_assert(offsetof(struct Struct0202A5E0, unkF8) == 0xF8);

struct Struct020309C0
{
    u8 unk0;
    u8 filler1[7];
    u8 unk8;
};

struct Struct03000520
{
	u8 unk0;  // screen fading?
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
	u8 filler5[2];
	u8 unk7;
    s16 unk8;
	u8 fillerA[2];
	u32 unkC;
};  // size = 16 (0x10)

struct Struct03000BE0
{
    u8 unk0;
    u8 filler1[3];
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
};

struct Struct0200B250
{
	u32 unk0;
    u8 filler4[0x25-0x4];
    u8 unk25;
    u8 filler26[0x40-0x26];
};

// Used for collision, messaging in LTTP?
struct Sprite {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
};
