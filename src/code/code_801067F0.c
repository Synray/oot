#include <ultra64.h>
#include <global.h>

// fmodf? unused
f32 func_801067F0(f32 arg0, f32 arg1) {
    s32 sp4;

    if (arg1 == 0.0f) {
        return 0.0f;
    }
    sp4 = (s32) (arg0 / arg1);
    return arg0 - ((f32) sp4 * arg1);
}
