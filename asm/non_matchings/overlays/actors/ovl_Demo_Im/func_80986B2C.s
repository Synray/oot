glabel func_80986B2C
/* 01F4C 80986B2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F50 80986B30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F54 80986B34 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01F58 80986B38 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01F5C 80986B3C 0C042F6F */  jal     func_8010BDBC              
/* 01F60 80986B40 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01F64 80986B44 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01F68 80986B48 14410011 */  bne     $v0, $at, .L80986B90       
/* 01F6C 80986B4C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01F70 80986B50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F74 80986B54 8CE51C44 */  lw      $a1, 0x1C44($a3)           ## 00001C44
/* 01F78 80986B58 00270821 */  addu    $at, $at, $a3              
/* 01F7C 80986B5C 240E00CD */  addiu   $t6, $zero, 0x00CD         ## $t6 = 000000CD
/* 01F80 80986B60 A42E1E1A */  sh      $t6, 0x1E1A($at)           ## 00011E1A
/* 01F84 80986B64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F88 80986B68 00270821 */  addu    $at, $at, $a3              
/* 01F8C 80986B6C 240F0026 */  addiu   $t7, $zero, 0x0026         ## $t7 = 00000026
/* 01F90 80986B70 A02F1E5E */  sb      $t7, 0x1E5E($at)           ## 00011E5E
/* 01F94 80986B74 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F98 80986B78 00270821 */  addu    $at, $at, $a3              
/* 01F9C 80986B7C 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 01FA0 80986B80 A0381E15 */  sb      $t8, 0x1E15($at)           ## 00011E15
/* 01FA4 80986B84 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01FA8 80986B88 0C00B7D5 */  jal     func_8002DF54              
/* 01FAC 80986B8C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
.L80986B90:
/* 01FB0 80986B90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FB4 80986B94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FB8 80986B98 03E00008 */  jr      $ra                        
/* 01FBC 80986B9C 00000000 */  nop
