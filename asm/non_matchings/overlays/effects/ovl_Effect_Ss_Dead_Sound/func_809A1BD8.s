glabel func_809A1BD8
/* 0000A8 809A1BD8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0000AC 809A1BDC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0000B0 809A1BE0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0000B4 809A1BE4 AFA50024 */  sw    $a1, 0x24($sp)
/* 0000B8 809A1BE8 84C30056 */  lh    $v1, 0x56($a2)
/* 0000BC 809A1BEC 24010001 */  li    $at, 1
/* 0000C0 809A1BF0 00C02825 */  move  $a1, $a2
/* 0000C4 809A1BF4 10610006 */  beq   $v1, $at, .L809A1C10
/* 0000C8 809A1BF8 00601025 */   move  $v0, $v1
/* 0000CC 809A1BFC 24010002 */  li    $at, 2
/* 0000D0 809A1C00 10410005 */  beq   $v0, $at, .L809A1C18
/* 0000D4 809A1C04 00000000 */   nop   
/* 0000D8 809A1C08 1000000D */  b     .L809A1C40
/* 0000DC 809A1C0C 8FBF001C */   lw    $ra, 0x1c($sp)
.L809A1C10:
/* 0000E0 809A1C10 246EFFFF */  addiu $t6, $v1, -1
/* 0000E4 809A1C14 A4AE0056 */  sh    $t6, 0x56($a1)
.L809A1C18:
/* 0000E8 809A1C18 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* 0000EC 809A1C1C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* 0000F0 809A1C20 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* 0000F4 809A1C24 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* 0000F8 809A1C28 94A40054 */  lhu   $a0, 0x54($a1)
/* 0000FC 809A1C2C AFAF0014 */  sw    $t7, 0x14($sp)
/* 000100 809A1C30 AFA70010 */  sw    $a3, 0x10($sp)
/* 000104 809A1C34 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* 000108 809A1C38 24060004 */   li    $a2, 4
/* 00010C 809A1C3C 8FBF001C */  lw    $ra, 0x1c($sp)
.L809A1C40:
/* 000110 809A1C40 27BD0020 */  addiu $sp, $sp, 0x20
/* 000114 809A1C44 03E00008 */  jr    $ra
/* 000118 809A1C48 00000000 */   nop   
/* 00011C 809A1C4C 00000000 */  nop
