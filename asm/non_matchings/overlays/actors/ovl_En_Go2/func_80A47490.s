glabel func_80A47490
/* 04760 80A47490 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04764 80A47494 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04768 80A47498 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0476C 80A4749C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 04770 80A474A0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 04774 80A474A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04778 80A474A8 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 0477C 80A474AC 90820212 */  lbu     $v0, 0x0212($a0)           ## 00000212
/* 04780 80A474B0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 04784 80A474B4 10400005 */  beq     $v0, $zero, .L80A474CC     
/* 04788 80A474B8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 0478C 80A474BC 50410014 */  beql    $v0, $at, .L80A47510       
/* 04790 80A474C0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 04794 80A474C4 10000029 */  beq     $zero, $zero, .L80A4756C   
/* 04798 80A474C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A474CC:
/* 0479C 80A474CC 0C042F6F */  jal     func_8010BDBC              
/* 047A0 80A474D0 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 047A4 80A474D4 14400024 */  bne     $v0, $zero, .L80A47568     
/* 047A8 80A474D8 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 047AC 80A474DC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 047B0 80A474E0 24053031 */  addiu   $a1, $zero, 0x3031         ## $a1 = 00003031
/* 047B4 80A474E4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 047B8 80A474E8 0C042DA0 */  jal     func_8010B680              
/* 047BC 80A474EC AFA70020 */  sw      $a3, 0x0020($sp)           
/* 047C0 80A474F0 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 047C4 80A474F4 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 047C8 80A474F8 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 047CC 80A474FC A7380110 */  sh      $t8, 0x0110($t9)           ## 00000110
/* 047D0 80A47500 90E80212 */  lbu     $t0, 0x0212($a3)           ## 00000212
/* 047D4 80A47504 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 047D8 80A47508 A0E90212 */  sb      $t1, 0x0212($a3)           ## 00000212
/* 047DC 80A4750C 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A47510:
/* 047E0 80A47510 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 047E4 80A47514 0C042F6F */  jal     func_8010BDBC              
/* 047E8 80A47518 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 047EC 80A4751C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 047F0 80A47520 10410005 */  beq     $v0, $at, .L80A47538       
/* 047F4 80A47524 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 047F8 80A47528 8FAB001C */  lw      $t3, 0x001C($sp)           
/* 047FC 80A4752C 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 04800 80A47530 1000000D */  beq     $zero, $zero, .L80A47568   
/* 04804 80A47534 A56A0110 */  sh      $t2, 0x0110($t3)           ## 00000110
.L80A47538:
/* 04808 80A47538 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0480C 80A4753C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 04810 80A47540 944C0F18 */  lhu     $t4, 0x0F18($v0)           ## 8015F578
/* 04814 80A47544 3C0F80A4 */  lui     $t7, %hi(func_80A4696C)    ## $t7 = 80A40000
/* 04818 80A47548 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0481C 80A4754C 358D1000 */  ori     $t5, $t4, 0x1000           ## $t5 = 00001000
/* 04820 80A47550 A44D0F18 */  sh      $t5, 0x0F18($v0)           ## 8015F578
/* 04824 80A47554 25EF696C */  addiu   $t7, $t7, %lo(func_80A4696C) ## $t7 = 80A4696C
/* 04828 80A47558 A4EE026E */  sh      $t6, 0x026E($a3)           ## 0000026E
/* 0482C 80A4755C A0E00211 */  sb      $zero, 0x0211($a3)         ## 00000211
/* 04830 80A47560 A0E0020F */  sb      $zero, 0x020F($a3)         ## 0000020F
/* 04834 80A47564 ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
.L80A47568:
/* 04838 80A47568 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A4756C:
/* 0483C 80A4756C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04840 80A47570 03E00008 */  jr      $ra                        
/* 04844 80A47574 00000000 */  nop
