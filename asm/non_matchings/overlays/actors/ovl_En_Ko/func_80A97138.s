glabel func_80A97138
/* 00388 80A97138 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0038C 80A9713C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00390 80A97140 94590EDC */  lhu     $t9, 0x0EDC($v0)           ## 8015F53C
/* 00394 80A97144 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 00398 80A97148 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 0039C 80A9714C 11000003 */  beq     $t0, $zero, .L80A9715C     
/* 003A0 80A97150 00000000 */  nop
/* 003A4 80A97154 03E00008 */  jr      $ra                        
/* 003A8 80A97158 24021021 */  addiu   $v0, $zero, 0x1021         ## $v0 = 00001021
.L80A9715C:
/* 003AC 80A9715C 8D297168 */  lw      $t1, 0x7168($t1)           ## 80127168
/* 003B0 80A97160 8C4A00A4 */  lw      $t2, 0x00A4($v0)           ## 000010C5
/* 003B4 80A97164 012A5824 */  and     $t3, $t1, $t2              
/* 003B8 80A97168 51600004 */  beql    $t3, $zero, .L80A9717C     
/* 003BC 80A9716C 944C0EFC */  lhu     $t4, 0x0EFC($v0)           ## 00001F1D
/* 003C0 80A97170 03E00008 */  jr      $ra                        
/* 003C4 80A97174 24021044 */  addiu   $v0, $zero, 0x1044         ## $v0 = 00001044
.L80A97178:
/* 003C8 80A97178 944C0EFC */  lhu     $t4, 0x0EFC($v0)           ## 00001F40
.L80A9717C:
/* 003CC 80A9717C 318D0004 */  andi    $t5, $t4, 0x0004           ## $t5 = 00000000
/* 003D0 80A97180 11A00003 */  beq     $t5, $zero, .L80A97190     
/* 003D4 80A97184 00000000 */  nop
/* 003D8 80A97188 03E00008 */  jr      $ra                        
/* 003DC 80A9718C 24021009 */  addiu   $v0, $zero, 0x1009         ## $v0 = 00001009
.L80A97190:
/* 003E0 80A97190 03E00008 */  jr      $ra                        
/* 003E4 80A97194 24021008 */  addiu   $v0, $zero, 0x1008         ## $v0 = 00001008
