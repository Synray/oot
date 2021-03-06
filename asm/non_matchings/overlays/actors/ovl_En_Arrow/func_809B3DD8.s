glabel func_809B3DD8
/* 004B8 809B3DD8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 004BC 809B3DDC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 004C0 809B3DE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004C4 809B3DE4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 004C8 809B3DE8 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 004CC 809B3DEC 26050210 */  addiu   $a1, $s0, 0x0210           ## $a1 = 00000210
/* 004D0 809B3DF0 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 004D4 809B3DF4 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 004D8 809B3DF8 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFF0
/* 004DC 809B3DFC 8E02024C */  lw      $v0, 0x024C($s0)           ## 0000024C
/* 004E0 809B3E00 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 004E4 809B3E04 C7AA0068 */  lwc1    $f10, 0x0068($sp)          
/* 004E8 809B3E08 C4460024 */  lwc1    $f6, 0x0024($v0)           ## 00000024
/* 004EC 809B3E0C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 004F0 809B3E10 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFF0
/* 004F4 809B3E14 46062201 */  sub.s   $f8, $f4, $f6              
/* 004F8 809B3E18 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 004FC 809B3E1C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00500 809B3E20 46049181 */  sub.s   $f6, $f18, $f4             
/* 00504 809B3E24 C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 00508 809B3E28 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 0050C 809B3E2C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00510 809B3E30 C446002C */  lwc1    $f6, 0x002C($v0)           ## 0000002C
/* 00514 809B3E34 46062201 */  sub.s   $f8, $f4, $f6              
/* 00518 809B3E38 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0051C 809B3E3C 460A8480 */  add.s   $f18, $f16, $f10           
/* 00520 809B3E40 C7B00070 */  lwc1    $f16, 0x0070($sp)          
/* 00524 809B3E44 46104282 */  mul.s   $f10, $f8, $f16            
/* 00528 809B3E48 460A9300 */  add.s   $f12, $f18, $f10           
/* 0052C 809B3E4C 4604603C */  c.lt.s  $f12, $f4                  
/* 00530 809B3E50 00000000 */  nop
/* 00534 809B3E54 4503005D */  bc1tl   .L809B3FCC                 
/* 00538 809B3E58 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0053C 809B3E5C 0C032D80 */  jal     func_800CB600              
/* 00540 809B3E60 E7AC004C */  swc1    $f12, 0x004C($sp)          
/* 00544 809B3E64 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00548 809B3E68 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0054C 809B3E6C C7AC004C */  lwc1    $f12, 0x004C($sp)          
/* 00550 809B3E70 4606003C */  c.lt.s  $f0, $f6                   
/* 00554 809B3E74 00000000 */  nop
/* 00558 809B3E78 45030054 */  bc1tl   .L809B3FCC                 
/* 0055C 809B3E7C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00560 809B3E80 46006083 */  div.s   $f2, $f12, $f0             
/* 00564 809B3E84 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFF0
/* 00568 809B3E88 44051000 */  mfc1    $a1, $f2                   
/* 0056C 809B3E8C 0C01DFD7 */  jal     Math_Vec3f_Scale
              
/* 00570 809B3E90 00000000 */  nop
/* 00574 809B3E94 8E04024C */  lw      $a0, 0x024C($s0)           ## 0000024C
/* 00578 809B3E98 27A50068 */  addiu   $a1, $sp, 0x0068           ## $a1 = FFFFFFF0
/* 0057C 809B3E9C 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFE4
/* 00580 809B3EA0 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00584 809B3EA4 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00588 809B3EA8 8E05024C */  lw      $a1, 0x024C($s0)           ## 0000024C
/* 0058C 809B3EAC 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00590 809B3EB0 27AE0074 */  addiu   $t6, $sp, 0x0074           ## $t6 = FFFFFFFC
/* 00594 809B3EB4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00598 809B3EB8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0059C 809B3EBC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 005A0 809B3EC0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 005A4 809B3EC4 27A90044 */  addiu   $t1, $sp, 0x0044           ## $t1 = FFFFFFCC
/* 005A8 809B3EC8 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 005AC 809B3ECC AFA80020 */  sw      $t0, 0x0020($sp)           
/* 005B0 809B3ED0 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 005B4 809B3ED4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 005B8 809B3ED8 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 005BC 809B3EDC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 005C0 809B3EE0 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFE4
/* 005C4 809B3EE4 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFD8
/* 005C8 809B3EE8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 005CC 809B3EEC 0C00F7A1 */  jal     func_8003DE84              
/* 005D0 809B3EF0 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 005D4 809B3EF4 10400030 */  beq     $v0, $zero, .L809B3FB8     
/* 005D8 809B3EF8 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 005DC 809B3EFC C7B0005C */  lwc1    $f16, 0x005C($sp)          
/* 005E0 809B3F00 C7B20050 */  lwc1    $f18, 0x0050($sp)          
/* 005E4 809B3F04 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 005E8 809B3F08 4608803E */  c.le.s  $f16, $f8                  
/* 005EC 809B3F0C 00000000 */  nop
/* 005F0 809B3F10 45020008 */  bc1fl   .L809B3F34                 
/* 005F4 809B3F14 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
/* 005F8 809B3F18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005FC 809B3F1C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00600 809B3F20 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00604 809B3F24 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
/* 00608 809B3F28 10000005 */  beq     $zero, $zero, .L809B3F40   
/* 0060C 809B3F2C 46006006 */  mov.s   $f0, $f12                  
/* 00610 809B3F30 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
.L809B3F34:
/* 00614 809B3F34 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00618 809B3F38 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0061C 809B3F3C 46001006 */  mov.s   $f0, $f2                   
.L809B3F40:
/* 00620 809B3F40 46120280 */  add.s   $f10, $f0, $f18            
/* 00624 809B3F44 8E0A024C */  lw      $t2, 0x024C($s0)           ## 0000024C
/* 00628 809B3F48 E54A0024 */  swc1    $f10, 0x0024($t2)          ## 00000024
/* 0062C 809B3F4C C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 00630 809B3F50 C7A60060 */  lwc1    $f6, 0x0060($sp)           
/* 00634 809B3F54 C7A80054 */  lwc1    $f8, 0x0054($sp)           
/* 00638 809B3F58 4604303E */  c.le.s  $f6, $f4                   
/* 0063C 809B3F5C 00000000 */  nop
/* 00640 809B3F60 45020004 */  bc1fl   .L809B3F74                 
/* 00644 809B3F64 46001006 */  mov.s   $f0, $f2                   
/* 00648 809B3F68 10000002 */  beq     $zero, $zero, .L809B3F74   
/* 0064C 809B3F6C 46006006 */  mov.s   $f0, $f12                  
/* 00650 809B3F70 46001006 */  mov.s   $f0, $f2                   
.L809B3F74:
/* 00654 809B3F74 46080400 */  add.s   $f16, $f0, $f8             
/* 00658 809B3F78 8E0B024C */  lw      $t3, 0x024C($s0)           ## 0000024C
/* 0065C 809B3F7C E5700028 */  swc1    $f16, 0x0028($t3)          ## 00000028
/* 00660 809B3F80 C7B20058 */  lwc1    $f18, 0x0058($sp)          
/* 00664 809B3F84 C7AA0064 */  lwc1    $f10, 0x0064($sp)          
/* 00668 809B3F88 C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 0066C 809B3F8C 4612503E */  c.le.s  $f10, $f18                 
/* 00670 809B3F90 00000000 */  nop
/* 00674 809B3F94 45020004 */  bc1fl   .L809B3FA8                 
/* 00678 809B3F98 46001006 */  mov.s   $f0, $f2                   
/* 0067C 809B3F9C 10000002 */  beq     $zero, $zero, .L809B3FA8   
/* 00680 809B3FA0 46006006 */  mov.s   $f0, $f12                  
/* 00684 809B3FA4 46001006 */  mov.s   $f0, $f2                   
.L809B3FA8:
/* 00688 809B3FA8 46040180 */  add.s   $f6, $f0, $f4              
/* 0068C 809B3FAC 8E0C024C */  lw      $t4, 0x024C($s0)           ## 0000024C
/* 00690 809B3FB0 10000005 */  beq     $zero, $zero, .L809B3FC8   
/* 00694 809B3FB4 E586002C */  swc1    $f6, 0x002C($t4)           ## 0000002C
.L809B3FB8:
/* 00698 809B3FB8 8E04024C */  lw      $a0, 0x024C($s0)           ## 0000024C
/* 0069C 809B3FBC 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFE4
/* 006A0 809B3FC0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 006A4 809B3FC4 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
.L809B3FC8:
/* 006A8 809B3FC8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809B3FCC:
/* 006AC 809B3FCC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 006B0 809B3FD0 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 006B4 809B3FD4 03E00008 */  jr      $ra                        
/* 006B8 809B3FD8 00000000 */  nop
