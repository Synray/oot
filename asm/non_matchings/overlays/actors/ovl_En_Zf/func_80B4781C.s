.late_rodata
glabel D_80B4A388
 .word 0x44098000
glabel D_80B4A38C
    .float 1.2

glabel D_80B4A390
    .float 1.2

.text
glabel func_80B4781C
/* 037CC 80B4781C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 037D0 80B47820 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 037D4 80B47824 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 037D8 80B47828 AFB00034 */  sw      $s0, 0x0034($sp)
/* 037DC 80B4782C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 037E0 80B47830 AFBF003C */  sw      $ra, 0x003C($sp)
/* 037E4 80B47834 AFB10038 */  sw      $s1, 0x0038($sp)
/* 037E8 80B47838 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 037EC 80B4783C E7A40070 */  swc1    $f4, 0x0070($sp)
/* 037F0 80B47840 860E0402 */  lh      $t6, 0x0402($s0)           ## 00000402
/* 037F4 80B47844 3C1880B5 */  lui     $t8, %hi(D_80B4A090)       ## $t8 = 80B50000
/* 037F8 80B47848 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 037FC 80B4784C 000E7880 */  sll     $t7, $t6,  2
/* 03800 80B47850 01EE7823 */  subu    $t7, $t7, $t6
/* 03804 80B47854 3C0180B5 */  lui     $at, %hi(D_80B4A388)       ## $at = 80B50000
/* 03808 80B47858 000F7880 */  sll     $t7, $t7,  2
/* 0380C 80B4785C 2718A090 */  addiu   $t8, $t8, %lo(D_80B4A090)  ## $t8 = 80B4A090
/* 03810 80B47860 C434A388 */  lwc1    $f20, %lo(D_80B4A388)($at)
/* 03814 80B47864 0C00B6EC */  jal     Actor_WorldDistXZToPoint
/* 03818 80B47868 01F82821 */  addu    $a1, $t7, $t8
/* 0381C 80B4786C E7A00074 */  swc1    $f0, 0x0074($sp)
/* 03820 80B47870 8E1903E4 */  lw      $t9, 0x03E4($s0)           ## 000003E4
/* 03824 80B47874 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 03828 80B47878 01114021 */  addu    $t0, $t0, $s1
/* 0382C 80B4787C AFB90054 */  sw      $t9, 0x0054($sp)
/* 03830 80B47880 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 03834 80B47884 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03838 80B47888 3109005F */  andi    $t1, $t0, 0x005F           ## $t1 = 00000000
/* 0383C 80B4788C 55200004 */  bnel    $t1, $zero, .L80B478A0
/* 03840 80B47890 3C0143D2 */  lui     $at, 0x43D2                ## $at = 43D20000
/* 03844 80B47894 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03848 80B47898 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 0384C 80B4789C 3C0143D2 */  lui     $at, 0x43D2                ## $at = 43D20000
.L80B478A0:
/* 03850 80B478A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 420.00
/* 03854 80B478A4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 03858 80B478A8 3C01438C */  lui     $at, 0x438C                ## $at = 438C0000
/* 0385C 80B478AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03860 80B478B0 4606403E */  c.le.s  $f8, $f6
/* 03864 80B478B4 00000000 */  nop
/* 03868 80B478B8 45020004 */  bc1fl   .L80B478CC
/* 0386C 80B478BC 860A0402 */  lh      $t2, 0x0402($s0)           ## 00000402
/* 03870 80B478C0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 280.00
/* 03874 80B478C4 00000000 */  nop
/* 03878 80B478C8 860A0402 */  lh      $t2, 0x0402($s0)           ## 00000402
.L80B478CC:
/* 0387C 80B478CC 3C0C80B5 */  lui     $t4, %hi(D_80B4A090)       ## $t4 = 80B50000
/* 03880 80B478D0 258CA090 */  addiu   $t4, $t4, %lo(D_80B4A090)  ## $t4 = 80B4A090
/* 03884 80B478D4 000A5880 */  sll     $t3, $t2,  2
/* 03888 80B478D8 016A5823 */  subu    $t3, $t3, $t2
/* 0388C 80B478DC 000B5880 */  sll     $t3, $t3,  2
/* 03890 80B478E0 0C00B6B0 */  jal     Actor_WorldYawTowardPoint
/* 03894 80B478E4 016C2821 */  addu    $a1, $t3, $t4
/* 03898 80B478E8 A7A2005A */  sh      $v0, 0x005A($sp)
/* 0389C 80B478EC 8E0703E4 */  lw      $a3, 0x03E4($s0)           ## 000003E4
/* 038A0 80B478F0 3C0380B5 */  lui     $v1, %hi(D_80B4AB30)       ## $v1 = 80B50000
/* 038A4 80B478F4 87AD005A */  lh      $t5, 0x005A($sp)
/* 038A8 80B478F8 10E00008 */  beq     $a3, $zero, .L80B4791C
/* 038AC 80B478FC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 038B0 80B47900 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 038B4 80B47904 10E10066 */  beq     $a3, $at, .L80B47AA0
/* 038B8 80B47908 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 038BC 80B4790C 50E100BD */  beql    $a3, $at, .L80B47C04
/* 038C0 80B47910 C606015C */  lwc1    $f6, 0x015C($s0)           ## 0000015C
/* 038C4 80B47914 100000C3 */  beq     $zero, $zero, .L80B47C24
/* 038C8 80B47918 8FAB0054 */  lw      $t3, 0x0054($sp)
.L80B4791C:
/* 038CC 80B4791C A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
/* 038D0 80B47920 87AE005A */  lh      $t6, 0x005A($sp)
/* 038D4 80B47924 2463AB30 */  addiu   $v1, $v1, %lo(D_80B4AB30)  ## $v1 = 80B4AB30
/* 038D8 80B47928 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 038DC 80B4792C 01C17821 */  addu    $t7, $t6, $at
/* 038E0 80B47930 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 038E4 80B47934 AC600000 */  sw      $zero, 0x0000($v1)         ## 80B4AB30
/* 038E8 80B47938 861803FE */  lh      $t8, 0x03FE($s0)           ## 000003FE
/* 038EC 80B4793C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 038F0 80B47940 3C0642D6 */  lui     $a2, 0x42D6                ## $a2 = 42D60000
/* 038F4 80B47944 0C2D1016 */  jal     func_80B44058
/* 038F8 80B47948 A6180400 */  sh      $t8, 0x0400($s0)           ## 00000400
/* 038FC 80B4794C 2C430001 */  sltiu   $v1, $v0, 0x0001
/* 03900 80B47950 AFA30050 */  sw      $v1, 0x0050($sp)
/* 03904 80B47954 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03908 80B47958 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0390C 80B4795C 0C2D1016 */  jal     func_80B44058
/* 03910 80B47960 3C06435C */  lui     $a2, 0x435C                ## $a2 = 435C0000
/* 03914 80B47964 8FA30050 */  lw      $v1, 0x0050($sp)
/* 03918 80B47968 8E0903E4 */  lw      $t1, 0x03E4($s0)           ## 000003E4
/* 0391C 80B4796C 2C590001 */  sltiu   $t9, $v0, 0x0001
/* 03920 80B47970 00194040 */  sll     $t0, $t9,  1
/* 03924 80B47974 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03928 80B47978 00681825 */  or      $v1, $v1, $t0              ## $v1 = 00000000
/* 0392C 80B4797C 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 03930 80B47980 10610006 */  beq     $v1, $at, .L80B4799C
/* 03934 80B47984 AE0A03E4 */  sw      $t2, 0x03E4($s0)           ## 000003E4
/* 03938 80B47988 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0393C 80B4798C 10610012 */  beq     $v1, $at, .L80B479D8
/* 03940 80B47990 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 03944 80B47994 54610018 */  bnel    $v1, $at, .L80B479F8
/* 03948 80B47998 3C0142D6 */  lui     $at, 0x42D6                ## $at = 42D60000
.L80B4799C:
/* 0394C 80B4799C 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 03950 80B479A0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 03954 80B479A4 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 03958 80B479A8 316C0008 */  andi    $t4, $t3, 0x0008           ## $t4 = 00000000
/* 0395C 80B479AC 11800006 */  beq     $t4, $zero, .L80B479C8
/* 03960 80B479B0 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 03964 80B479B4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 03968 80B479B8 44819000 */  mtc1    $at, $f18                  ## $f18 = 8.00
/* 0396C 80B479BC C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 03970 80B479C0 46128100 */  add.s   $f4, $f16, $f18
/* 03974 80B479C4 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
.L80B479C8:
/* 03978 80B479C8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0397C 80B479CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 03980 80B479D0 10000031 */  beq     $zero, $zero, .L80B47A98
/* 03984 80B479D4 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80B479D8:
/* 03988 80B479D8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0398C 80B479DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 03990 80B479E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03994 80B479E4 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 03998 80B479E8 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 0399C 80B479EC 1000002A */  beq     $zero, $zero, .L80B47A98
/* 039A0 80B479F0 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 039A4 80B479F4 3C0142D6 */  lui     $at, 0x42D6                ## $at = 42D60000
.L80B479F8:
/* 039A8 80B479F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 107.00
/* 039AC 80B479FC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 039B0 80B47A00 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 039B4 80B47A04 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 039B8 80B47A08 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 039BC 80B47A0C 3C0180B5 */  lui     $at, %hi(D_80B4A38C)       ## $at = 80B50000
/* 039C0 80B47A10 C426A38C */  lwc1    $f6, %lo(D_80B4A38C)($at)
/* 039C4 80B47A14 24030014 */  addiu   $v1, $zero, 0x0014         ## $v1 = 00000014
/* 039C8 80B47A18 46128500 */  add.s   $f20, $f16, $f18
/* 039CC 80B47A1C 46062000 */  add.s   $f0, $f4, $f6
.L80B47A20:
/* 039D0 80B47A20 4406A000 */  mfc1    $a2, $f20
/* 039D4 80B47A24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 039D8 80B47A28 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 039DC 80B47A2C AFA3004C */  sw      $v1, 0x004C($sp)
/* 039E0 80B47A30 0C2D1016 */  jal     func_80B44058
/* 039E4 80B47A34 E7A00060 */  swc1    $f0, 0x0060($sp)
/* 039E8 80B47A38 8FA3004C */  lw      $v1, 0x004C($sp)
/* 039EC 80B47A3C 14400006 */  bne     $v0, $zero, .L80B47A58
/* 039F0 80B47A40 C7A00060 */  lwc1    $f0, 0x0060($sp)
/* 039F4 80B47A44 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 039F8 80B47A48 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 039FC 80B47A4C E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 03A00 80B47A50 10000009 */  beq     $zero, $zero, .L80B47A78
/* 03A04 80B47A54 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
.L80B47A58:
/* 03A08 80B47A58 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 03A0C 80B47A5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 03A10 80B47A60 3C0180B5 */  lui     $at, %hi(D_80B4A390)       ## $at = 80B50000
/* 03A14 80B47A64 C430A390 */  lwc1    $f16, %lo(D_80B4A390)($at)
/* 03A18 80B47A68 4612A500 */  add.s   $f20, $f20, $f18
/* 03A1C 80B47A6C 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 03A20 80B47A70 0461FFEB */  bgez    $v1, .L80B47A20
/* 03A24 80B47A74 46100000 */  add.s   $f0, $f0, $f16
.L80B47A78:
/* 03A28 80B47A78 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03A2C 80B47A7C C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 03A30 80B47A80 46120032 */  c.eq.s  $f0, $f18
/* 03A34 80B47A84 00000000 */  nop
/* 03A38 80B47A88 45000003 */  bc1f    .L80B47A98
/* 03A3C 80B47A8C 00000000 */  nop
/* 03A40 80B47A90 0C2D1D39 */  jal     func_80B474E4
/* 03A44 80B47A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B47A98:
/* 03A48 80B47A98 10000061 */  beq     $zero, $zero, .L80B47C20
/* 03A4C 80B47A9C 8E0703E4 */  lw      $a3, 0x03E4($s0)           ## 000003E4
.L80B47AA0:
/* 03A50 80B47AA0 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 03A54 80B47AA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03A58 80B47AA8 304D0002 */  andi    $t5, $v0, 0x0002           ## $t5 = 00000000
/* 03A5C 80B47AAC 15A00003 */  bne     $t5, $zero, .L80B47ABC
/* 03A60 80B47AB0 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 03A64 80B47AB4 11C00042 */  beq     $t6, $zero, .L80B47BC0
/* 03A68 80B47AB8 87A5005A */  lh      $a1, 0x005A($sp)
.L80B47ABC:
/* 03A6C 80B47ABC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03A70 80B47AC0 24053828 */  addiu   $a1, $zero, 0x3828         ## $a1 = 00003828
/* 03A74 80B47AC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03A78 80B47AC8 C6040080 */  lwc1    $f4, 0x0080($s0)           ## 00000080
/* 03A7C 80B47ACC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03A80 80B47AD0 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 03A84 80B47AD4 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 03A88 80B47AD8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 03A8C 80B47ADC 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 03A90 80B47AE0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 03A94 80B47AE4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 03A98 80B47AE8 AFA00020 */  sw      $zero, 0x0020($sp)
/* 03A9C 80B47AEC AFA0001C */  sw      $zero, 0x001C($sp)
/* 03AA0 80B47AF0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 03AA4 80B47AF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03AA8 80B47AF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03AAC 80B47AFC 260604F0 */  addiu   $a2, $s0, 0x04F0           ## $a2 = 000004F0
/* 03AB0 80B47B00 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 03AB4 80B47B04 0C00CC98 */  jal     func_80033260
/* 03AB8 80B47B08 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 03ABC 80B47B0C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03AC0 80B47B10 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 03AC4 80B47B14 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 03AC8 80B47B18 AFB80010 */  sw      $t8, 0x0010($sp)
/* 03ACC 80B47B1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03AD0 80B47B20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03AD4 80B47B24 260604E4 */  addiu   $a2, $s0, 0x04E4           ## $a2 = 000004E4
/* 03AD8 80B47B28 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 03ADC 80B47B2C AFA00018 */  sw      $zero, 0x0018($sp)
/* 03AE0 80B47B30 AFA0001C */  sw      $zero, 0x001C($sp)
/* 03AE4 80B47B34 AFA00020 */  sw      $zero, 0x0020($sp)
/* 03AE8 80B47B38 0C00CC98 */  jal     func_80033260
/* 03AEC 80B47B3C E7A80014 */  swc1    $f8, 0x0014($sp)
/* 03AF0 80B47B40 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 03AF4 80B47B44 C7B00074 */  lwc1    $f16, 0x0074($sp)
/* 03AF8 80B47B48 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 03AFC 80B47B4C 460AA03E */  c.le.s  $f20, $f10
/* 03B00 80B47B50 00000000 */  nop
/* 03B04 80B47B54 45020006 */  bc1fl   .L80B47B70
/* 03B08 80B47B58 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 03B0C 80B47B5C 0C2D1D39 */  jal     func_80B474E4
/* 03B10 80B47B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03B14 80B47B64 10000012 */  beq     $zero, $zero, .L80B47BB0
/* 03B18 80B47B68 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03B1C 80B47B6C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
.L80B47B70:
/* 03B20 80B47B70 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 03B24 80B47B74 4612803C */  c.lt.s  $f16, $f18
/* 03B28 80B47B78 00000000 */  nop
/* 03B2C 80B47B7C 4502000C */  bc1fl   .L80B47BB0
/* 03B30 80B47B80 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03B34 80B47B84 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 03B38 80B47B88 0C2D11AA */  jal     func_80B446A8
/* 03B3C 80B47B8C AFA40044 */  sw      $a0, 0x0044($sp)
/* 03B40 80B47B90 8FA40044 */  lw      $a0, 0x0044($sp)
/* 03B44 80B47B94 A60203FE */  sh      $v0, 0x03FE($s0)           ## 000003FE
/* 03B48 80B47B98 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 03B4C 80B47B9C 86060400 */  lh      $a2, 0x0400($s0)           ## 00000400
/* 03B50 80B47BA0 0C2D121C */  jal     func_80B44870
/* 03B54 80B47BA4 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 03B58 80B47BA8 A6020402 */  sh      $v0, 0x0402($s0)           ## 00000402
/* 03B5C 80B47BAC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
.L80B47BB0:
/* 03B60 80B47BB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 03B64 80B47BB4 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
/* 03B68 80B47BB8 1000000F */  beq     $zero, $zero, .L80B47BF8
/* 03B6C 80B47BBC E7A40070 */  swc1    $f4, 0x0070($sp)
.L80B47BC0:
/* 03B70 80B47BC0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 03B74 80B47BC4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03B78 80B47BC8 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 03B7C 80B47BCC 0C01E1A7 */  jal     Math_SmoothStepToS

/* 03B80 80B47BD0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 03B84 80B47BD4 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 03B88 80B47BD8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03B8C 80B47BDC 3C0380B5 */  lui     $v1, %hi(D_80B4AB30)       ## $v1 = 80B50000
/* 03B90 80B47BE0 03214021 */  addu    $t0, $t9, $at
/* 03B94 80B47BE4 2463AB30 */  addiu   $v1, $v1, %lo(D_80B4AB30)  ## $v1 = 80B4AB30
/* 03B98 80B47BE8 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 03B9C 80B47BEC 8C690000 */  lw      $t1, 0x0000($v1)           ## 80B4AB30
/* 03BA0 80B47BF0 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 03BA4 80B47BF4 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 80B4AB30
.L80B47BF8:
/* 03BA8 80B47BF8 10000009 */  beq     $zero, $zero, .L80B47C20
/* 03BAC 80B47BFC 8E0703E4 */  lw      $a3, 0x03E4($s0)           ## 000003E4
/* 03BB0 80B47C00 C606015C */  lwc1    $f6, 0x015C($s0)           ## 0000015C
.L80B47C04:
/* 03BB4 80B47C04 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 03BB8 80B47C08 46083032 */  c.eq.s  $f6, $f8
/* 03BBC 80B47C0C 00000000 */  nop
/* 03BC0 80B47C10 45020004 */  bc1fl   .L80B47C24
/* 03BC4 80B47C14 8FAB0054 */  lw      $t3, 0x0054($sp)
/* 03BC8 80B47C18 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
/* 03BCC 80B47C1C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80B47C20:
/* 03BD0 80B47C20 8FAB0054 */  lw      $t3, 0x0054($sp)
.L80B47C24:
/* 03BD4 80B47C24 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03BD8 80B47C28 00076080 */  sll     $t4, $a3,  2
/* 03BDC 80B47C2C 11670005 */  beq     $t3, $a3, .L80B47C44
/* 03BE0 80B47C30 3C0580B5 */  lui     $a1, %hi(D_80B4A280)       ## $a1 = 80B50000
/* 03BE4 80B47C34 00AC2821 */  addu    $a1, $a1, $t4
/* 03BE8 80B47C38 8CA5A280 */  lw      $a1, %lo(D_80B4A280)($a1)
/* 03BEC 80B47C3C 0C0294A7 */  jal     Animation_PlayOnceSetSpeed
/* 03BF0 80B47C40 8FA60070 */  lw      $a2, 0x0070($sp)
.L80B47C44:
/* 03BF4 80B47C44 0C02927F */  jal     SkelAnime_Update

/* 03BF8 80B47C48 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03BFC 80B47C4C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 03C00 80B47C50 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 03C04 80B47C54 8FB00034 */  lw      $s0, 0x0034($sp)
/* 03C08 80B47C58 8FB10038 */  lw      $s1, 0x0038($sp)
/* 03C0C 80B47C5C 03E00008 */  jr      $ra
/* 03C10 80B47C60 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
