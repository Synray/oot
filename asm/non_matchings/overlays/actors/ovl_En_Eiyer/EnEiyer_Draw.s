.rdata
glabel D_80A019D0
    .asciz "../z_en_eiyer.c"
    .balign 4

glabel D_80A019E0
    .asciz "../z_en_eiyer.c"
    .balign 4

.text
glabel EnEiyer_Draw
/* 0183C 80A017DC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01840 80A017E0 AFB20030 */  sw      $s2, 0x0030($sp)
/* 01844 80A017E4 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01848 80A017E8 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 0184C 80A017EC AFB1002C */  sw      $s1, 0x002C($sp)
/* 01850 80A017F0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01854 80A017F4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01858 80A017F8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0185C 80A017FC 3C0680A0 */  lui     $a2, %hi(D_80A019D0)       ## $a2 = 80A00000
/* 01860 80A01800 24C619D0 */  addiu   $a2, $a2, %lo(D_80A019D0)  ## $a2 = 80A019D0
/* 01864 80A01804 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 01868 80A01808 240705D6 */  addiu   $a3, $zero, 0x05D6         ## $a3 = 000005D6
/* 0186C 80A0180C 0C031AB1 */  jal     Graph_OpenDisps
/* 01870 80A01810 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01874 80A01814 8E2F0190 */  lw      $t7, 0x0190($s1)           ## 00000190
/* 01878 80A01818 3C0E80A0 */  lui     $t6, %hi(func_80A012F4)    ## $t6 = 80A00000
/* 0187C 80A0181C 25CE12F4 */  addiu   $t6, $t6, %lo(func_80A012F4) ## $t6 = 80A012F4
/* 01880 80A01820 11CF001F */  beq     $t6, $t7, .L80A018A0
/* 01884 80A01824 00000000 */  nop
/* 01888 80A01828 0C024F46 */  jal     func_80093D18
/* 0188C 80A0182C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 01890 80A01830 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01894 80A01834 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01898 80A01838 3C088011 */  lui     $t0, 0x8011                ## $t0 = 80110000
/* 0189C 80A0183C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 018A0 80A01840 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 018A4 80A01844 25086290 */  addiu   $t0, $t0, 0x6290           ## $t0 = 80116290
/* 018A8 80A01848 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 018AC 80A0184C AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 018B0 80A01850 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 018B4 80A01854 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 018B8 80A01858 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 018BC 80A0185C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 018C0 80A01860 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 018C4 80A01864 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 018C8 80A01868 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 018CC 80A0186C AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 018D0 80A01870 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 018D4 80A01874 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 018D8 80A01878 AFB10014 */  sw      $s1, 0x0014($sp)
/* 018DC 80A0187C AFA00010 */  sw      $zero, 0x0010($sp)
/* 018E0 80A01880 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 018E4 80A01884 3C0780A0 */  lui     $a3, %hi(func_80A0178C)    ## $a3 = 80A00000
/* 018E8 80A01888 24E7178C */  addiu   $a3, $a3, %lo(func_80A0178C) ## $a3 = 80A0178C
/* 018EC 80A0188C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 018F0 80A01890 0C0288A2 */  jal     SkelAnime_Draw2
/* 018F4 80A01894 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 018F8 80A01898 10000020 */  beq     $zero, $zero, .L80A0191C
/* 018FC 80A0189C AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L80A018A0:
/* 01900 80A018A0 0C024F61 */  jal     func_80093D84
/* 01904 80A018A4 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 01908 80A018A8 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 0190C 80A018AC 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 01910 80A018B0 3C0F8011 */  lui     $t7, 0x8011                ## $t7 = 80110000
/* 01914 80A018B4 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 01918 80A018B8 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 0191C 80A018BC 25EF6280 */  addiu   $t7, $t7, 0x6280           ## $t7 = 80116280
/* 01920 80A018C0 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 01924 80A018C4 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 01928 80A018C8 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 0192C 80A018CC 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01930 80A018D0 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01934 80A018D4 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 01938 80A018D8 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0193C 80A018DC AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01940 80A018E0 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 01944 80A018E4 922900C8 */  lbu     $t1, 0x00C8($s1)           ## 000000C8
/* 01948 80A018E8 3C0780A0 */  lui     $a3, %hi(func_80A0178C)    ## $a3 = 80A00000
/* 0194C 80A018EC 24E7178C */  addiu   $a3, $a3, %lo(func_80A0178C) ## $a3 = 80A0178C
/* 01950 80A018F0 01215025 */  or      $t2, $t1, $at              ## $t2 = FFFFFF00
/* 01954 80A018F4 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 01958 80A018F8 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 0195C 80A018FC 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 01960 80A01900 AFB10014 */  sw      $s1, 0x0014($sp)
/* 01964 80A01904 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01968 80A01908 8E0B02D0 */  lw      $t3, 0x02D0($s0)           ## 000002D0
/* 0196C 80A0190C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01970 80A01910 0C0288A2 */  jal     SkelAnime_Draw2
/* 01974 80A01914 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 01978 80A01918 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80A0191C:
/* 0197C 80A0191C 3C0680A0 */  lui     $a2, %hi(D_80A019E0)       ## $a2 = 80A00000
/* 01980 80A01920 24C619E0 */  addiu   $a2, $a2, %lo(D_80A019E0)  ## $a2 = 80A019E0
/* 01984 80A01924 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 01988 80A01928 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 0198C 80A0192C 0C031AD5 */  jal     Graph_CloseDisps
/* 01990 80A01930 24070605 */  addiu   $a3, $zero, 0x0605         ## $a3 = 00000605
/* 01994 80A01934 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01998 80A01938 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0199C 80A0193C 8FB1002C */  lw      $s1, 0x002C($sp)
/* 019A0 80A01940 8FB20030 */  lw      $s2, 0x0030($sp)
/* 019A4 80A01944 03E00008 */  jr      $ra
/* 019A8 80A01948 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 019AC 80A0194C 00000000 */  nop
