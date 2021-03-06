/*
 * File: z_bg_spot09_obj.c
 * Overlay: ovl_Bg_Spot09_Obj
 * Description:
 */

#include "z_bg_spot09_obj.h"

#define FLAGS 0x00000000

void BgSpot09Obj_Init(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Destroy(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Update(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Draw(BgSpot09Obj* this, GlobalContext* globalCtx);

s32 func_808B1AE0(BgSpot09Obj* this, GlobalContext* globalCtx);
s32 func_808B1BA0(BgSpot09Obj* this, GlobalContext* globalCtx);
s32 func_808B1BEC(BgSpot09Obj* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot09_Obj_InitVars = {
    ACTOR_BG_SPOT09_OBJ,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT09_OBJ,
    sizeof(BgSpot09Obj),
    (ActorFunc)BgSpot09Obj_Init,
    (ActorFunc)BgSpot09Obj_Destroy,
    (ActorFunc)BgSpot09Obj_Update,
    (ActorFunc)BgSpot09Obj_Draw,
};

static u32 D_808B1F90[] = { 0x00000000, 0x06005520, 0x0600283C, 0x06008458, 0x06007580 };

static s32 (*D_808B1FA4[])(BgSpot09Obj* this, GlobalContext* globalCtx) = {
    func_808B1BEC,
    func_808B1AE0,
    func_808B1BA0,
};

static InitChainEntry initChain1[] = {
    ICHAIN_F32(unk_F4, 7200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 7200, ICHAIN_STOP),
};

static InitChainEntry initChain2[] = {
    ICHAIN_F32(unk_F4, 7200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1500, ICHAIN_STOP),
};

static u32 dlists[] = { 0x06000100, 0x06003970, 0x06001120, 0x06007D40, 0x06006210 };

extern UNK_TYPE D_06008010;

s32 func_808B1AE0(BgSpot09Obj* this, GlobalContext* globalCtx) {
    s32 carpentersRescued;
    Actor* thisx = &this->dyna.actor;

    if (gSaveContext.sceneSetupIndex >= 4) {
        return thisx->params == 0;
    }

    carpentersRescued = (gSaveContext.eventChkInf[9] & 0xF) == 0xF;

    if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
        switch (thisx->params) {
            case 0:
                return 0;
            case 1:
                return !carpentersRescued;
            case 4:
                return carpentersRescued;
            case 3:
                return 1;
        }
    } else {
        return thisx->params == 2;
    }

    return 0;
}

s32 func_808B1BA0(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    if (thisx->params == 3) {
        Actor_SetScale(thisx, 0.1f);
    } else {
        Actor_SetScale(thisx, 1.0f);
    }
    return 1;
}

s32 func_808B1BEC(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s32 localC = 0;
    s32 pad[2];

    if (D_808B1F90[thisx->params] != 0) {
        DynaPolyInfo_SetActorMove(thisx, 0);
        DynaPolyInfo_Alloc(D_808B1F90[thisx->params], &localC);
        this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    }
    return 1;
}

s32 func_808B1C70(BgSpot09Obj* this, GlobalContext* globalCtx) {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(D_808B1FA4); i++) {
        if (!D_808B1FA4[i](this, globalCtx)) {
            return 0;
        }
    }
    return 1;
}

s32 func_808B1CEC(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->dyna.actor, &initChain1);
    return 1;
}

s32 func_808B1D18(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->dyna.actor, &initChain2);
    return 1;
}

s32 func_808B1D44(BgSpot09Obj* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.params == 3) {
        return func_808B1D18(this, globalCtx);
    } else {
        return func_808B1CEC(this, globalCtx);
    }
}

void BgSpot09Obj_Init(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    osSyncPrintf("Spot09 Object [arg_data : 0x%04x](大工救出フラグ 0x%x)\n", thisx->params,
                 gSaveContext.eventChkInf[9] & 0xF);
    thisx->params &= 0xFF;
    if ((thisx->params < 0) || (thisx->params >= 5)) {
        osSyncPrintf("Error : Spot 09 object の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n",
                     "../z_bg_spot09_obj.c", 322, thisx->params);
    }

    if (!func_808B1C70(this, globalCtx)) {
        Actor_Kill(thisx);
    } else if (!func_808B1D44(this, globalCtx)) {
        Actor_Kill(thisx);
    }
}

void BgSpot09Obj_Destroy(BgSpot09Obj* this, GlobalContext* globalCtx) {
    DynaCollisionContext* dynaColCtx = &globalCtx->colCtx.dyna;
    Actor* thisx = &this->dyna.actor;

    if (thisx->params != 0) {
        DynaPolyInfo_Free(globalCtx, dynaColCtx, this->dyna.dynaPolyId);
    }
}

void BgSpot09Obj_Update(BgSpot09Obj* this, GlobalContext* globalCtx) {
}

void BgSpot09Obj_Draw(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[3];

    Gfx_DrawDListOpa(globalCtx, dlists[thisx->params]);
    if (thisx->params == 3) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 388);
        func_80093D84(globalCtx->state.gfxCtx);

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 391),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, &D_06008010);

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 396);
    }
}
