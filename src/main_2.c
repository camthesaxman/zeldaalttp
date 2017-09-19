#include "gba/gba.h"
#include "global.h"

// This will only match when compiled with old_agbcc
void sub_0800B7A0(void)
{
    if (gUnknown_03000BC0.unk0 != 0)
    {
        DmaStop(0);
        DmaSet(0, gUnknown_03000BC0.src, gUnknown_03000BC0.dest, gUnknown_03000BC0.dmaCnt);
    }
    REG_DISPSTAT = 0x2028;
    gUnknown_03000B70.unk8 = sub_0800B7FC;
}

void sub_0800B7FC(void)
{
    sub_081346FC();
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR | DISPSTAT_VCOUNT_INTR;
    gUnknown_03000B70.unk8 = sub_0800B7A0;
}

void sub_0800B820(void)
{
    void (*func)(void) = (void (*)(void))(gUnknown_02030590 + 1);  // Add 1 so that we remain in THUMB mode.
    
    func();
}
