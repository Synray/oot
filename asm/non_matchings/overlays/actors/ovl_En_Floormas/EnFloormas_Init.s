glabel EnFloormas_Init
/* 00000 80A17510 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 80A17514 AFB10030 */  sw      $s1, 0x0030($sp)
/* 00008 80A17518 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80A1751C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00010 80A17520 AFB0002C */  sw      $s0, 0x002C($sp)
/* 00014 80A17524 3C0580A2 */  lui     $a1, %hi(D_80A1A4C4)       ## $a1 = 80A20000
/* 00018 80A17528 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80A1752C 0C01E037 */  jal     Actor_ProcessInitChain

/* 00020 80A17530 24A5A4C4 */  addiu   $a1, $a1, %lo(D_80A1A4C4)  ## $a1 = 80A1A4C4
/* 00024 80A17534 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00028 80A17538 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0002C 80A1753C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80A17540 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80A17544 0C00AC78 */  jal     ActorShape_Init

/* 00038 80A17548 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0003C 80A1754C 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00040 80A17550 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 00044 80A17554 260E019C */  addiu   $t6, $s0, 0x019C           ## $t6 = 0000019C
/* 00048 80A17558 260F0232 */  addiu   $t7, $s0, 0x0232           ## $t7 = 00000232
/* 0004C 80A1755C 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 00050 80A17560 AFB80018 */  sw      $t8, 0x0018($sp)
/* 00054 80A17564 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00058 80A17568 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0005C 80A1756C 24E79DB0 */  addiu   $a3, $a3, 0x9DB0           ## $a3 = 06009DB0
/* 00060 80A17570 24C68FB0 */  addiu   $a2, $a2, 0x8FB0           ## $a2 = 06008FB0
/* 00064 80A17574 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80A17578 0C0291BE */  jal     SkelAnime_InitSV
/* 0006C 80A1757C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 80A17580 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 00074 80A17584 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00078 80A17588 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 0007C 80A1758C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00080 80A17590 3C0780A2 */  lui     $a3, %hi(D_80A1A470)       ## $a3 = 80A20000
/* 00084 80A17594 8FA5003C */  lw      $a1, 0x003C($sp)
/* 00088 80A17598 24E7A470 */  addiu   $a3, $a3, %lo(D_80A1A470)  ## $a3 = 80A1A470
/* 0008C 80A1759C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00090 80A175A0 0C01712B */  jal     ActorCollider_InitCylinder

/* 00094 80A175A4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00098 80A175A8 3C0580A2 */  lui     $a1, %hi(D_80A1A4A4)       ## $a1 = 80A20000
/* 0009C 80A175AC 3C0680A2 */  lui     $a2, %hi(D_80A1A49C)       ## $a2 = 80A20000
/* 000A0 80A175B0 24C6A49C */  addiu   $a2, $a2, %lo(D_80A1A49C)  ## $a2 = 80A1A49C
/* 000A4 80A175B4 24A5A4A4 */  addiu   $a1, $a1, %lo(D_80A1A4A4)  ## $a1 = 80A1A4A4
/* 000A8 80A175B8 0C0187B5 */  jal     func_80061ED4
/* 000AC 80A175BC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000B0 80A175C0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 000B4 80A175C4 2419F9C0 */  addiu   $t9, $zero, 0xF9C0         ## $t9 = FFFFF9C0
/* 000B8 80A175C8 A6190198 */  sh      $t9, 0x0198($s0)           ## 00000198
/* 000BC 80A175CC 30438000 */  andi    $v1, $v0, 0x8000           ## $v1 = 00000000
/* 000C0 80A175D0 30497FFF */  andi    $t1, $v0, 0x7FFF           ## $t1 = 00000000
/* 000C4 80A175D4 10600007 */  beq     $v1, $zero, .L80A175F4
/* 000C8 80A175D8 A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
/* 000CC 80A175DC 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 000D0 80A175E0 3C0C80A2 */  lui     $t4, %hi(func_80A1A350)    ## $t4 = 80A20000
/* 000D4 80A175E4 258CA350 */  addiu   $t4, $t4, %lo(func_80A1A350) ## $t4 = 80A1A350
/* 000D8 80A175E8 354B0080 */  ori     $t3, $t2, 0x0080           ## $t3 = 00000080
/* 000DC 80A175EC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 000E0 80A175F0 AE0C0134 */  sw      $t4, 0x0134($s0)           ## 00000134
.L80A175F4:
/* 000E4 80A175F4 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 000E8 80A175F8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 000EC 80A175FC 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 000F0 80A17600 15A1000A */  bne     $t5, $at, .L80A1762C
/* 000F4 80A17604 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 000F8 80A17608 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 000FC 80A1760C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00100 80A17610 3C1880A2 */  lui     $t8, %hi(func_80A19B9C)    ## $t8 = 80A20000
/* 00104 80A17614 27189B9C */  addiu   $t8, $t8, %lo(func_80A19B9C) ## $t8 = 80A19B9C
/* 00108 80A17618 01C17824 */  and     $t7, $t6, $at
/* 0010C 80A1761C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00110 80A17620 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00114 80A17624 10000039 */  beq     $zero, $zero, .L80A1770C
/* 00118 80A17628 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80A1762C:
/* 0011C 80A1762C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00120 80A17630 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00124 80A17634 24680010 */  addiu   $t0, $v1, 0x0010           ## $t0 = 00000010
/* 00128 80A17638 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 0012C 80A1763C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00130 80A17640 00084400 */  sll     $t0, $t0, 16
/* 00134 80A17644 00084403 */  sra     $t0, $t0, 16
/* 00138 80A17648 AFA80024 */  sw      $t0, 0x0024($sp)
/* 0013C 80A1764C AFA8003C */  sw      $t0, 0x003C($sp)
/* 00140 80A17650 AFA40038 */  sw      $a0, 0x0038($sp)
/* 00144 80A17654 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00148 80A17658 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0014C 80A1765C AFA00018 */  sw      $zero, 0x0018($sp)
/* 00150 80A17660 2406008E */  addiu   $a2, $zero, 0x008E         ## $a2 = 0000008E
/* 00154 80A17664 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00158 80A17668 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 0015C 80A1766C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00160 80A17670 8FA8003C */  lw      $t0, 0x003C($sp)
/* 00164 80A17674 14400005 */  bne     $v0, $zero, .L80A1768C
/* 00168 80A17678 AE020118 */  sw      $v0, 0x0118($s0)           ## 00000118
/* 0016C 80A1767C 0C00B55C */  jal     Actor_Kill

/* 00170 80A17680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00174 80A17684 10000022 */  beq     $zero, $zero, .L80A17710
/* 00178 80A17688 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A1768C:
/* 0017C 80A1768C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00180 80A17690 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00184 80A17694 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00188 80A17698 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 0018C 80A1769C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00190 80A176A0 AFA80024 */  sw      $t0, 0x0024($sp)
/* 00194 80A176A4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00198 80A176A8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0019C 80A176AC AFA00018 */  sw      $zero, 0x0018($sp)
/* 001A0 80A176B0 2406008E */  addiu   $a2, $zero, 0x008E         ## $a2 = 0000008E
/* 001A4 80A176B4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 001A8 80A176B8 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 001AC 80A176BC 14400007 */  bne     $v0, $zero, .L80A176DC
/* 001B0 80A176C0 AE02011C */  sw      $v0, 0x011C($s0)           ## 0000011C
/* 001B4 80A176C4 0C00B55C */  jal     Actor_Kill

/* 001B8 80A176C8 8E040118 */  lw      $a0, 0x0118($s0)           ## 00000118
/* 001BC 80A176CC 0C00B55C */  jal     Actor_Kill

/* 001C0 80A176D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C4 80A176D4 1000000E */  beq     $zero, $zero, .L80A17710
/* 001C8 80A176D8 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A176DC:
/* 001CC 80A176DC 8E190118 */  lw      $t9, 0x0118($s0)           ## 00000118
/* 001D0 80A176E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D4 80A176E4 AF30011C */  sw      $s0, 0x011C($t9)           ## 0000011C
/* 001D8 80A176E8 8E09011C */  lw      $t1, 0x011C($s0)           ## 0000011C
/* 001DC 80A176EC 8E0A0118 */  lw      $t2, 0x0118($s0)           ## 00000118
/* 001E0 80A176F0 AD490118 */  sw      $t1, 0x0118($t2)           ## 00000118
/* 001E4 80A176F4 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
/* 001E8 80A176F8 AD700118 */  sw      $s0, 0x0118($t3)           ## 00000118
/* 001EC 80A176FC 8E0D011C */  lw      $t5, 0x011C($s0)           ## 0000011C
/* 001F0 80A17700 8E0C0118 */  lw      $t4, 0x0118($s0)           ## 00000118
/* 001F4 80A17704 0C285DE0 */  jal     func_80A17780
/* 001F8 80A17708 ADAC011C */  sw      $t4, 0x011C($t5)           ## 0000011C
.L80A1770C:
/* 001FC 80A1770C 8FBF0034 */  lw      $ra, 0x0034($sp)
.L80A17710:
/* 00200 80A17710 8FB0002C */  lw      $s0, 0x002C($sp)
/* 00204 80A17714 8FB10030 */  lw      $s1, 0x0030($sp)
/* 00208 80A17718 03E00008 */  jr      $ra
/* 0020C 80A1771C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
