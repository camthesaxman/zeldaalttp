#include <stdlib.h>
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

// zeros out a region of memory.
// both ptr and size must be 4-byte aligned
void zero_memory(void *addr, s32 size)
{
    do
    {
        *((u32 *)addr)++ = 0;
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
