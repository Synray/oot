.rdata
glabel D_8090D9BC
    .asciz "../z_boss_ganon2.c"
    .balign 4

glabel D_8090D9D0
    .asciz "../z_boss_ganon2.c"
    .balign 4

glabel D_8090D9E4
    .asciz "../z_boss_ganon2.c"
    .balign 4

.text
glabel BossGanon2_Draw
/* 089B0 809058F0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 089B4 809058F4 AFB10028 */  sw      $s1, 0x0028($sp)
/* 089B8 809058F8 AFB00024 */  sw      $s0, 0x0024($sp)
/* 089BC 809058FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 089C0 80905900 AFBF002C */  sw      $ra, 0x002C($sp)
/* 089C4 80905904 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 089C8 80905908 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 089CC 8090590C 0C031A73 */  jal     Graph_Alloc

/* 089D0 80905910 24051000 */  addiu   $a1, $zero, 0x1000         ## $a1 = 00001000
/* 089D4 80905914 AFA20074 */  sw      $v0, 0x0074($sp)
/* 089D8 80905918 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 089DC 8090591C 3C068091 */  lui     $a2, %hi(D_8090D9BC)       ## $a2 = 80910000
/* 089E0 80905920 24C6D9BC */  addiu   $a2, $a2, %lo(D_8090D9BC)  ## $a2 = 8090D9BC
/* 089E4 80905924 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE0
/* 089E8 80905928 240716D0 */  addiu   $a3, $zero, 0x16D0         ## $a3 = 000016D0
/* 089EC 8090592C 0C031AB1 */  jal     Graph_OpenDisps
/* 089F0 80905930 AFA50068 */  sw      $a1, 0x0068($sp)
/* 089F4 80905934 0C024F46 */  jal     func_80093D18
/* 089F8 80905938 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 089FC 8090593C 0C024F61 */  jal     func_80093D84
/* 08A00 80905940 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 08A04 80905944 92020337 */  lbu     $v0, 0x0337($s0)           ## 00000337
/* 08A08 80905948 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08A0C 8090594C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08A10 80905950 10400009 */  beq     $v0, $zero, .L80905978
/* 08A14 80905954 240600E1 */  addiu   $a2, $zero, 0x00E1         ## $a2 = 000000E1
/* 08A18 80905958 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 08A1C 8090595C 10410036 */  beq     $v0, $at, .L80905A38
/* 08A20 80905960 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08A24 80905964 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 08A28 80905968 50410034 */  beql    $v0, $at, .L80905A3C
/* 08A2C 8090596C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08A30 80905970 100000AB */  beq     $zero, $zero, .L80905C20
/* 08A34 80905974 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80905978:
/* 08A38 80905978 0C23F442 */  jal     func_808FD108
/* 08A3C 8090597C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08A40 80905980 8FAE0068 */  lw      $t6, 0x0068($sp)
/* 08A44 80905984 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08A48 80905988 2484A8E0 */  addiu   $a0, $a0, 0xA8E0           ## $a0 = 0600A8E0
/* 08A4C 8090598C 8DC302D0 */  lw      $v1, 0x02D0($t6)           ## 000002D0
/* 08A50 80905990 0004C900 */  sll     $t9, $a0,  4
/* 08A54 80905994 00194F02 */  srl     $t1, $t9, 28
/* 08A58 80905998 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 08A5C 8090599C 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 08A60 809059A0 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 08A64 809059A4 256B6FA8 */  addiu   $t3, $t3, 0x6FA8           ## $t3 = 80166FA8
/* 08A68 809059A8 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 08A6C 809059AC 00095080 */  sll     $t2, $t1,  2
/* 08A70 809059B0 ADCF02D0 */  sw      $t7, 0x02D0($t6)           ## 000002D0
/* 08A74 809059B4 014B2821 */  addu    $a1, $t2, $t3
/* 08A78 809059B8 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 08A7C 809059BC 8CAC0000 */  lw      $t4, 0x0000($a1)           ## 00000000
/* 08A80 809059C0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 08A84 809059C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 08A88 809059C8 00813024 */  and     $a2, $a0, $at
/* 08A8C 809059CC 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 08A90 809059D0 01866821 */  addu    $t5, $t4, $a2
/* 08A94 809059D4 01A77821 */  addu    $t7, $t5, $a3
/* 08A98 809059D8 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 08A9C 809059DC 8FAE0068 */  lw      $t6, 0x0068($sp)
/* 08AA0 809059E0 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 08AA4 809059E4 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 08AA8 809059E8 8DC302D0 */  lw      $v1, 0x02D0($t6)           ## 000002D0
/* 08AAC 809059EC 3C0C8090 */  lui     $t4, %hi(func_80905508)    ## $t4 = 80900000
/* 08AB0 809059F0 258C5508 */  addiu   $t4, $t4, %lo(func_80905508) ## $t4 = 80905508
/* 08AB4 809059F4 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 08AB8 809059F8 ADD802D0 */  sw      $t8, 0x02D0($t6)           ## 000002D0
/* 08ABC 809059FC AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 08AC0 80905A00 8CA90000 */  lw      $t1, 0x0000($a1)           ## 00000000
/* 08AC4 80905A04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08AC8 80905A08 01265021 */  addu    $t2, $t1, $a2
/* 08ACC 80905A0C 01475821 */  addu    $t3, $t2, $a3
/* 08AD0 80905A10 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 08AD4 80905A14 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 08AD8 80905A18 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 08ADC 80905A1C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 08AE0 80905A20 AFB00018 */  sw      $s0, 0x0018($sp)
/* 08AE4 80905A24 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 08AE8 80905A28 0C0286B2 */  jal     SkelAnime_DrawSV
/* 08AEC 80905A2C AFA00010 */  sw      $zero, 0x0010($sp)
/* 08AF0 80905A30 1000007B */  beq     $zero, $zero, .L80905C20
/* 08AF4 80905A34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80905A38:
/* 08AF8 80905A38 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80905A3C:
/* 08AFC 80905A3C 24060153 */  addiu   $a2, $zero, 0x0153         ## $a2 = 00000153
/* 08B00 80905A40 0C23F442 */  jal     func_808FD108
/* 08B04 80905A44 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08B08 80905A48 8FA80068 */  lw      $t0, 0x0068($sp)
/* 08B0C 80905A4C 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 08B10 80905A50 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 08B14 80905A54 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 08B18 80905A58 3C048090 */  lui     $a0, %hi(D_80907170)       ## $a0 = 80900000
/* 08B1C 80905A5C 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 08B20 80905A60 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 08B24 80905A64 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 08B28 80905A68 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 08B2C 80905A6C 92180310 */  lbu     $t8, 0x0310($s0)           ## 00000310
/* 08B30 80905A70 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 08B34 80905A74 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 08B38 80905A78 00187080 */  sll     $t6, $t8,  2
/* 08B3C 80905A7C 008E2021 */  addu    $a0, $a0, $t6
/* 08B40 80905A80 8C847170 */  lw      $a0, %lo(D_80907170)($a0)
/* 08B44 80905A84 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 08B48 80905A88 26050444 */  addiu   $a1, $s0, 0x0444           ## $a1 = 00000444
/* 08B4C 80905A8C 00044900 */  sll     $t1, $a0,  4
/* 08B50 80905A90 00095702 */  srl     $t2, $t1, 28
/* 08B54 80905A94 000A5880 */  sll     $t3, $t2,  2
/* 08B58 80905A98 018B6021 */  addu    $t4, $t4, $t3
/* 08B5C 80905A9C 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 08B60 80905AA0 0081C824 */  and     $t9, $a0, $at
/* 08B64 80905AA4 3C068090 */  lui     $a2, %hi(D_8090717C)       ## $a2 = 80900000
/* 08B68 80905AA8 032C6821 */  addu    $t5, $t9, $t4
/* 08B6C 80905AAC 01A77821 */  addu    $t7, $t5, $a3
/* 08B70 80905AB0 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 08B74 80905AB4 AFA5003C */  sw      $a1, 0x003C($sp)
/* 08B78 80905AB8 24C6717C */  addiu   $a2, $a2, %lo(D_8090717C)  ## $a2 = 8090717C
/* 08B7C 80905ABC 0C23F420 */  jal     func_808FD080
/* 08B80 80905AC0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 08B84 80905AC4 3C068090 */  lui     $a2, %hi(D_8090717C)       ## $a2 = 80900000
/* 08B88 80905AC8 8FA5003C */  lw      $a1, 0x003C($sp)
/* 08B8C 80905ACC 24C6717C */  addiu   $a2, $a2, %lo(D_8090717C)  ## $a2 = 8090717C
/* 08B90 80905AD0 0C23F420 */  jal     func_808FD080
/* 08B94 80905AD4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 08B98 80905AD8 3C188090 */  lui     $t8, %hi(D_8090717C)       ## $t8 = 80900000
/* 08B9C 80905ADC 2718717C */  addiu   $t8, $t8, %lo(D_8090717C)  ## $t8 = 8090717C
/* 08BA0 80905AE0 8F090000 */  lw      $t1, 0x0000($t8)           ## 8090717C
/* 08BA4 80905AE4 860A0342 */  lh      $t2, 0x0342($s0)           ## 00000342
/* 08BA8 80905AE8 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 08BAC 80905AEC AE090218 */  sw      $t1, 0x0218($s0)           ## 00000218
/* 08BB0 80905AF0 8F0E0004 */  lw      $t6, 0x0004($t8)           ## 80907180
/* 08BB4 80905AF4 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 08BB8 80905AF8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 08BBC 80905AFC AE0E021C */  sw      $t6, 0x021C($s0)           ## 0000021C
/* 08BC0 80905B00 8F090008 */  lw      $t1, 0x0008($t8)           ## 80907184
/* 08BC4 80905B04 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08BC8 80905B08 1160000C */  beq     $t3, $zero, .L80905B3C
/* 08BCC 80905B0C AE090220 */  sw      $t1, 0x0220($s0)           ## 00000220
/* 08BD0 80905B10 8FB90068 */  lw      $t9, 0x0068($sp)
/* 08BD4 80905B14 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 08BD8 80905B18 240D0384 */  addiu   $t5, $zero, 0x0384         ## $t5 = 00000384
/* 08BDC 80905B1C 8F2402C0 */  lw      $a0, 0x02C0($t9)           ## 000002C0
/* 08BE0 80905B20 240F044B */  addiu   $t7, $zero, 0x044B         ## $t7 = 0000044B
/* 08BE4 80905B24 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 08BE8 80905B28 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 08BEC 80905B2C 0C024CDC */  jal     Gfx_SetFog
/* 08BF0 80905B30 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 08BF4 80905B34 8FB80068 */  lw      $t8, 0x0068($sp)
/* 08BF8 80905B38 AF0202C0 */  sw      $v0, 0x02C0($t8)           ## 000002C0
.L80905B3C:
/* 08BFC 80905B3C 3C01C57A */  lui     $at, 0xC57A                ## $at = C57A0000
/* 08C00 80905B40 44817000 */  mtc1    $at, $f14                  ## $f14 = -4000.00
/* 08C04 80905B44 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 08C08 80905B48 3C06457A */  lui     $a2, 0x457A                ## $a2 = 457A0000
/* 08C0C 80905B4C 0C034261 */  jal     Matrix_Translate
/* 08C10 80905B50 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08C14 80905B54 C60C0394 */  lwc1    $f12, 0x0394($s0)          ## 00000394
/* 08C18 80905B58 0C0342DC */  jal     Matrix_RotateX
/* 08C1C 80905B5C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 08C20 80905B60 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 08C24 80905B64 44817000 */  mtc1    $at, $f14                  ## $f14 = 4000.00
/* 08C28 80905B68 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 08C2C 80905B6C 3C06C57A */  lui     $a2, 0xC57A                ## $a2 = C57A0000
/* 08C30 80905B70 0C034261 */  jal     Matrix_Translate
/* 08C34 80905B74 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08C38 80905B78 8FA20068 */  lw      $v0, 0x0068($sp)
/* 08C3C 80905B7C 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 08C40 80905B80 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 08C44 80905B84 8C4302C0 */  lw      $v1, 0x02C0($v0)           ## 000002C0
/* 08C48 80905B88 3C058091 */  lui     $a1, %hi(D_8090D9D0)       ## $a1 = 80910000
/* 08C4C 80905B8C 24A5D9D0 */  addiu   $a1, $a1, %lo(D_8090D9D0)  ## $a1 = 8090D9D0
/* 08C50 80905B90 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 08C54 80905B94 AC4E02C0 */  sw      $t6, 0x02C0($v0)           ## 000002C0
/* 08C58 80905B98 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 08C5C 80905B9C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 08C60 80905BA0 24061716 */  addiu   $a2, $zero, 0x1716         ## $a2 = 00001716
/* 08C64 80905BA4 0C0346A2 */  jal     Matrix_NewMtx
/* 08C68 80905BA8 AFA30048 */  sw      $v1, 0x0048($sp)
/* 08C6C 80905BAC 8FA70048 */  lw      $a3, 0x0048($sp)
/* 08C70 80905BB0 3C0A8090 */  lui     $t2, %hi(func_80904818)    ## $t2 = 80900000
/* 08C74 80905BB4 3C0B8090 */  lui     $t3, %hi(func_809049A0)    ## $t3 = 80900000
/* 08C78 80905BB8 ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 08C7C 80905BBC 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 08C80 80905BC0 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 08C84 80905BC4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 08C88 80905BC8 256B49A0 */  addiu   $t3, $t3, %lo(func_809049A0) ## $t3 = 809049A0
/* 08C8C 80905BCC 254A4818 */  addiu   $t2, $t2, %lo(func_80904818) ## $t2 = 80904818
/* 08C90 80905BD0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 08C94 80905BD4 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 08C98 80905BD8 AFB00018 */  sw      $s0, 0x0018($sp)
/* 08C9C 80905BDC 0C0286B2 */  jal     SkelAnime_DrawSV
/* 08CA0 80905BE0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08CA4 80905BE4 8FB90068 */  lw      $t9, 0x0068($sp)
/* 08CA8 80905BE8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08CAC 80905BEC 0C02F228 */  jal     func_800BC8A0
/* 08CB0 80905BF0 8F2502C0 */  lw      $a1, 0x02C0($t9)           ## 000002C0
/* 08CB4 80905BF4 8FAC0068 */  lw      $t4, 0x0068($sp)
/* 08CB8 80905BF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08CBC 80905BFC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 08CC0 80905C00 AD8202C0 */  sw      $v0, 0x02C0($t4)           ## 000002C0
/* 08CC4 80905C04 0C241A7E */  jal     func_809069F8
/* 08CC8 80905C08 8FA40074 */  lw      $a0, 0x0074($sp)
/* 08CCC 80905C0C 8FA40074 */  lw      $a0, 0x0074($sp)
/* 08CD0 80905C10 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 08CD4 80905C14 0C241AAC */  jal     func_80906AB0
/* 08CD8 80905C18 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 08CDC 80905C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80905C20:
/* 08CE0 80905C20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08CE4 80905C24 24060153 */  addiu   $a2, $zero, 0x0153         ## $a2 = 00000153
/* 08CE8 80905C28 0C23F442 */  jal     func_808FD108
/* 08CEC 80905C2C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08CF0 80905C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08CF4 80905C34 0C2410D0 */  jal     func_80904340
/* 08CF8 80905C38 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08CFC 80905C3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D00 80905C40 0C241042 */  jal     func_80904108
/* 08D04 80905C44 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D08 80905C48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D0C 80905C4C 0C241362 */  jal     func_80904D88
/* 08D10 80905C50 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D14 80905C54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D18 80905C58 0C241193 */  jal     func_8090464C
/* 08D1C 80905C5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D20 80905C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D24 80905C64 0C24159D */  jal     func_80905674
/* 08D28 80905C68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D2C 80905C6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D30 80905C70 0C2413F2 */  jal     func_80904FC8
/* 08D34 80905C74 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D38 80905C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D3C 80905C7C 0C24148F */  jal     func_8090523C
/* 08D40 80905C80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D44 80905C84 920D0312 */  lbu     $t5, 0x0312($s0)           ## 00000312
/* 08D48 80905C88 3C028090 */  lui     $v0, %hi(D_80907080)       ## $v0 = 80900000
/* 08D4C 80905C8C 24427080 */  addiu   $v0, $v0, %lo(D_80907080)  ## $v0 = 80907080
/* 08D50 80905C90 15A00004 */  bne     $t5, $zero, .L80905CA4
/* 08D54 80905C94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08D58 80905C98 844F0000 */  lh      $t7, 0x0000($v0)           ## 80907080
/* 08D5C 80905C9C 11E00015 */  beq     $t7, $zero, .L80905CF4
/* 08D60 80905CA0 00000000 */  nop
.L80905CA4:
/* 08D64 80905CA4 0C240FCE */  jal     func_80903F38
/* 08D68 80905CA8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08D6C 80905CAC 92180312 */  lbu     $t8, 0x0312($s0)           ## 00000312
/* 08D70 80905CB0 3C028090 */  lui     $v0, %hi(D_80907080)       ## $v0 = 80900000
/* 08D74 80905CB4 24427080 */  addiu   $v0, $v0, %lo(D_80907080)  ## $v0 = 80907080
/* 08D78 80905CB8 17000008 */  bne     $t8, $zero, .L80905CDC
/* 08D7C 80905CBC 00000000 */  nop
/* 08D80 80905CC0 844E0000 */  lh      $t6, 0x0000($v0)           ## 80907080
/* 08D84 80905CC4 25C9FFD8 */  addiu   $t1, $t6, 0xFFD8           ## $t1 = FFFFFFD8
/* 08D88 80905CC8 A4490000 */  sh      $t1, 0x0000($v0)           ## 80907080
/* 08D8C 80905CCC 844A0000 */  lh      $t2, 0x0000($v0)           ## 80907080
/* 08D90 80905CD0 1D400002 */  bgtz    $t2, .L80905CDC
/* 08D94 80905CD4 00000000 */  nop
/* 08D98 80905CD8 A4400000 */  sh      $zero, 0x0000($v0)         ## 80907080
.L80905CDC:
/* 08D9C 80905CDC 3C028091 */  lui     $v0, %hi(D_80910638)       ## $v0 = 80910000
/* 08DA0 80905CE0 24420638 */  addiu   $v0, $v0, %lo(D_80910638)  ## $v0 = 80910638
/* 08DA4 80905CE4 804B0000 */  lb      $t3, 0x0000($v0)           ## 80910638
/* 08DA8 80905CE8 25790001 */  addiu   $t9, $t3, 0x0001           ## $t9 = 00000001
/* 08DAC 80905CEC 10000021 */  beq     $zero, $zero, .L80905D74
/* 08DB0 80905CF0 A0590000 */  sb      $t9, 0x0000($v0)           ## 80910638
.L80905CF4:
/* 08DB4 80905CF4 3C068091 */  lui     $a2, %hi(D_80910608)       ## $a2 = 80910000
/* 08DB8 80905CF8 3C048091 */  lui     $a0, %hi(D_809105D8)       ## $a0 = 80910000
/* 08DBC 80905CFC 248405D8 */  addiu   $a0, $a0, %lo(D_809105D8)  ## $a0 = 809105D8
/* 08DC0 80905D00 24C60608 */  addiu   $a2, $a2, %lo(D_80910608)  ## $a2 = 80910608
/* 08DC4 80905D04 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 08DC8 80905D08 26070200 */  addiu   $a3, $s0, 0x0200           ## $a3 = 00000200
/* 08DCC 80905D0C 2608020C */  addiu   $t0, $s0, 0x020C           ## $t0 = 0000020C
/* 08DD0 80905D10 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
.L80905D14:
/* 08DD4 80905D14 00650019 */  multu   $v1, $a1
/* 08DD8 80905D18 8CEF0000 */  lw      $t7, 0x0000($a3)           ## 00000200
/* 08DDC 80905D1C 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 08DE0 80905D20 00031C00 */  sll     $v1, $v1, 16
/* 08DE4 80905D24 00031C03 */  sra     $v1, $v1, 16
/* 08DE8 80905D28 28610003 */  slti    $at, $v1, 0x0003
/* 08DEC 80905D2C 00001012 */  mflo    $v0
/* 08DF0 80905D30 00826021 */  addu    $t4, $a0, $v0
/* 08DF4 80905D34 AD8F0000 */  sw      $t7, 0x0000($t4)           ## 00000000
/* 08DF8 80905D38 8CED0004 */  lw      $t5, 0x0004($a3)           ## 00000204
/* 08DFC 80905D3C 00C2C021 */  addu    $t8, $a2, $v0
/* 08E00 80905D40 AD8D0004 */  sw      $t5, 0x0004($t4)           ## 00000004
/* 08E04 80905D44 8CEF0008 */  lw      $t7, 0x0008($a3)           ## 00000208
/* 08E08 80905D48 AD8F0008 */  sw      $t7, 0x0008($t4)           ## 00000008
/* 08E0C 80905D4C 8D090000 */  lw      $t1, 0x0000($t0)           ## 0000020C
/* 08E10 80905D50 AF090000 */  sw      $t1, 0x0000($t8)           ## 00000000
/* 08E14 80905D54 8D0E0004 */  lw      $t6, 0x0004($t0)           ## 00000210
/* 08E18 80905D58 AF0E0004 */  sw      $t6, 0x0004($t8)           ## 00000004
/* 08E1C 80905D5C 8D090008 */  lw      $t1, 0x0008($t0)           ## 00000214
/* 08E20 80905D60 1420FFEC */  bne     $at, $zero, .L80905D14
/* 08E24 80905D64 AF090008 */  sw      $t1, 0x0008($t8)           ## 00000008
/* 08E28 80905D68 3C028091 */  lui     $v0, %hi(D_80910638)       ## $v0 = 80910000
/* 08E2C 80905D6C 24420638 */  addiu   $v0, $v0, %lo(D_80910638)  ## $v0 = 80910638
/* 08E30 80905D70 A0400000 */  sb      $zero, 0x0000($v0)         ## 80910638
.L80905D74:
/* 08E34 80905D74 3C068091 */  lui     $a2, %hi(D_8090D9E4)       ## $a2 = 80910000
/* 08E38 80905D78 24C6D9E4 */  addiu   $a2, $a2, %lo(D_8090D9E4)  ## $a2 = 8090D9E4
/* 08E3C 80905D7C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE0
/* 08E40 80905D80 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 08E44 80905D84 0C031AD5 */  jal     Graph_CloseDisps
/* 08E48 80905D88 2407175F */  addiu   $a3, $zero, 0x175F         ## $a3 = 0000175F
/* 08E4C 80905D8C 0C24183A */  jal     func_809060E8
/* 08E50 80905D90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08E54 80905D94 8FBF002C */  lw      $ra, 0x002C($sp)
/* 08E58 80905D98 8FB00024 */  lw      $s0, 0x0024($sp)
/* 08E5C 80905D9C 8FB10028 */  lw      $s1, 0x0028($sp)
/* 08E60 80905DA0 03E00008 */  jr      $ra
/* 08E64 80905DA4 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
