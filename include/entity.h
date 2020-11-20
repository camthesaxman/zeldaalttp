#ifndef GUARD_ENTITY_H
#define GUARD_ENTITY_H

#include "global.h"

typedef struct Entity {
    /* 0x0 */ struct Entity* prev;
    /* 0x4 */ struct Entity* next;
    /* 0x8 */ u8 type;
    /* 0x9 */ u8 subtype;
    /* 0xA */ u8 form;
    /* 0xB */ u8 parameter;
    /* 0xC */ u8 filler9[0x14];
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 frameIdx;
    /* 0x22 */ u8 lastFrameIdx;
    /* 0x23 */ u8 unk23;
    /* 0x24 */ void* frame;
    /* 0x28 */ u8 frameTimer;
    /* 0x29 */ u8 filler29[9];
    /* 0x32 */ s16 unk32;
} Entity;
static_assert(sizeof(Entity) == 0x34);

#endif
