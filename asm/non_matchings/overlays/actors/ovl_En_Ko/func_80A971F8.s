glabel func_80A971F8
/* 00448 80A971F8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0044C 80A971FC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00450 80A97200 944B0EDC */  lhu     $t3, 0x0EDC($v0)           ## 8015F53C
/* 00454 80A97204 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 00458 80A97208 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 0045C 80A9720C 11800003 */  beq     $t4, $zero, .L80A9721C     
/* 00460 80A97210 00000000 */  nop
/* 00464 80A97214 03E00008 */  jr      $ra                        
/* 00468 80A97218 240210B0 */  addiu   $v0, $zero, 0x10B0         ## $v0 = 000010B0
.L80A9721C:
/* 0046C 80A9721C 8DAD7168 */  lw      $t5, 0x7168($t5)           ## 80127168
/* 00470 80A97220 8C4E00A4 */  lw      $t6, 0x00A4($v0)           ## 00001154
/* 00474 80A97224 01AE7824 */  and     $t7, $t5, $t6              
/* 00478 80A97228 51E00004 */  beql    $t7, $zero, .L80A9723C     
/* 0047C 80A9722C 94580EFC */  lhu     $t8, 0x0EFC($v0)           ## 00001FAC
/* 00480 80A97230 03E00008 */  jr      $ra                        
/* 00484 80A97234 24021043 */  addiu   $v0, $zero, 0x1043         ## $v0 = 00001043
.L80A97238:
/* 00488 80A97238 94580EFC */  lhu     $t8, 0x0EFC($v0)           ## 00001F3F
.L80A9723C:
/* 0048C 80A9723C 33190040 */  andi    $t9, $t8, 0x0040           ## $t9 = 00000000
/* 00490 80A97240 13200003 */  beq     $t9, $zero, .L80A97250     
/* 00494 80A97244 00000000 */  nop
/* 00498 80A97248 03E00008 */  jr      $ra                        
/* 0049C 80A9724C 2402100D */  addiu   $v0, $zero, 0x100D         ## $v0 = 0000100D
.L80A97250:
/* 004A0 80A97250 03E00008 */  jr      $ra                        
/* 004A4 80A97254 2402100C */  addiu   $v0, $zero, 0x100C         ## $v0 = 0000100C
