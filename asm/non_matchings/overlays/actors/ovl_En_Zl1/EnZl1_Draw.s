.rdata
glabel D_80B4E720
    .asciz "../z_en_girlB.c"
    .balign 4

glabel D_80B4E730
    .asciz "../z_en_girlB.c"
    .balign 4

.text
glabel EnZl1_Draw
/* 0191C 80B4C45C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01920 80B4C460 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01924 80B4C464 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01928 80B4C468 AFA5005C */  sw      $a1, 0x005C($sp)
/* 0192C 80B4C46C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01930 80B4C470 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01934 80B4C474 3C0680B5 */  lui     $a2, %hi(D_80B4E720)       ## $a2 = 80B50000
/* 01938 80B4C478 24C6E720 */  addiu   $a2, $a2, %lo(D_80B4E720)  ## $a2 = 80B4E720
/* 0193C 80B4C47C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01940 80B4C480 240707DB */  addiu   $a3, $zero, 0x07DB         ## $a3 = 000007DB
/* 01944 80B4C484 0C031AB1 */  jal     Graph_OpenDisps
/* 01948 80B4C488 AFA50050 */  sw      $a1, 0x0050($sp)
/* 0194C 80B4C48C 8FA80050 */  lw      $t0, 0x0050($sp)
/* 01950 80B4C490 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 01954 80B4C494 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 01958 80B4C498 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0195C 80B4C49C 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 01960 80B4C4A0 24A56FA8 */  addiu   $a1, $a1, 0x6FA8           ## $a1 = 80166FA8
/* 01964 80B4C4A4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01968 80B4C4A8 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 0196C 80B4C4AC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01970 80B4C4B0 8E0401F4 */  lw      $a0, 0x01F4($s0)           ## 000001F4
/* 01974 80B4C4B4 3C0600FF */  lui     $a2, 0x00FF                ## $a2 = 00FF0000
/* 01978 80B4C4B8 34C6FFFF */  ori     $a2, $a2, 0xFFFF           ## $a2 = 00FFFFFF
/* 0197C 80B4C4BC 0004C900 */  sll     $t9, $a0,  4
/* 01980 80B4C4C0 00194F02 */  srl     $t1, $t9, 28
/* 01984 80B4C4C4 00095080 */  sll     $t2, $t1,  2
/* 01988 80B4C4C8 00AA5821 */  addu    $t3, $a1, $t2
/* 0198C 80B4C4CC 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 01990 80B4C4D0 00866824 */  and     $t5, $a0, $a2
/* 01994 80B4C4D4 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 01998 80B4C4D8 018D7021 */  addu    $t6, $t4, $t5
/* 0199C 80B4C4DC 01C77821 */  addu    $t7, $t6, $a3
/* 019A0 80B4C4E0 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 019A4 80B4C4E4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 019A8 80B4C4E8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 019AC 80B4C4EC 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 019B0 80B4C4F0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 019B4 80B4C4F4 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 019B8 80B4C4F8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 019BC 80B4C4FC 8E0401F8 */  lw      $a0, 0x01F8($s0)           ## 000001F8
/* 019C0 80B4C500 00044900 */  sll     $t1, $a0,  4
/* 019C4 80B4C504 00095702 */  srl     $t2, $t1, 28
/* 019C8 80B4C508 000A5880 */  sll     $t3, $t2,  2
/* 019CC 80B4C50C 00AB6021 */  addu    $t4, $a1, $t3
/* 019D0 80B4C510 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 019D4 80B4C514 00867024 */  and     $t6, $a0, $a2
/* 019D8 80B4C518 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 019DC 80B4C51C 01AE7821 */  addu    $t7, $t5, $t6
/* 019E0 80B4C520 01E7C021 */  addu    $t8, $t7, $a3
/* 019E4 80B4C524 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 019E8 80B4C528 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 019EC 80B4C52C 35290028 */  ori     $t1, $t1, 0x0028           ## $t1 = DB060028
/* 019F0 80B4C530 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 019F4 80B4C534 AD1902C0 */  sw      $t9, 0x02C0($t0)           ## 000002C0
/* 019F8 80B4C538 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 019FC 80B4C53C 8E0401EC */  lw      $a0, 0x01EC($s0)           ## 000001EC
/* 01A00 80B4C540 00045100 */  sll     $t2, $a0,  4
/* 01A04 80B4C544 000A5F02 */  srl     $t3, $t2, 28
/* 01A08 80B4C548 000B6080 */  sll     $t4, $t3,  2
/* 01A0C 80B4C54C 00AC6821 */  addu    $t5, $a1, $t4
/* 01A10 80B4C550 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 01A14 80B4C554 00867824 */  and     $t7, $a0, $a2
/* 01A18 80B4C558 01CFC021 */  addu    $t8, $t6, $t7
/* 01A1C 80B4C55C 0307C821 */  addu    $t9, $t8, $a3
/* 01A20 80B4C560 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01A24 80B4C564 8FA9005C */  lw      $t1, 0x005C($sp)
/* 01A28 80B4C568 0C024F46 */  jal     func_80093D18
/* 01A2C 80B4C56C 8D240000 */  lw      $a0, 0x0000($t1)           ## DB060028
/* 01A30 80B4C570 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01A34 80B4C574 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 01A38 80B4C578 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 01A3C 80B4C57C 3C0A80B5 */  lui     $t2, %hi(func_80B4C340)    ## $t2 = 80B50000
/* 01A40 80B4C580 3C0B80B5 */  lui     $t3, %hi(func_80B4C400)    ## $t3 = 80B50000
/* 01A44 80B4C584 256BC400 */  addiu   $t3, $t3, %lo(func_80B4C400) ## $t3 = 80B4C400
/* 01A48 80B4C588 254AC340 */  addiu   $t2, $t2, %lo(func_80B4C340) ## $t2 = 80B4C340
/* 01A4C 80B4C58C AFAA0010 */  sw      $t2, 0x0010($sp)
/* 01A50 80B4C590 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 01A54 80B4C594 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01A58 80B4C598 0C0286B2 */  jal     SkelAnime_DrawSV
/* 01A5C 80B4C59C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 01A60 80B4C5A0 8FAC005C */  lw      $t4, 0x005C($sp)
/* 01A64 80B4C5A4 3C0680B5 */  lui     $a2, %hi(D_80B4E730)       ## $a2 = 80B50000
/* 01A68 80B4C5A8 24C6E730 */  addiu   $a2, $a2, %lo(D_80B4E730)  ## $a2 = 80B4E730
/* 01A6C 80B4C5AC 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 01A70 80B4C5B0 240707FE */  addiu   $a3, $zero, 0x07FE         ## $a3 = 000007FE
/* 01A74 80B4C5B4 0C031AD5 */  jal     Graph_CloseDisps
/* 01A78 80B4C5B8 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 01A7C 80B4C5BC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01A80 80B4C5C0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01A84 80B4C5C4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01A88 80B4C5C8 03E00008 */  jr      $ra
/* 01A8C 80B4C5CC 00000000 */  nop
