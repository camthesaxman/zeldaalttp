#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"

#define static_assert(cond) extern char assertion[(cond) ? 1 : -1]

#include "types.h"
#include "variables.h"
#include "functions.h"

#endif  // GUARD_GLOBAL_H
