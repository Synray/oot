glabel func_8080BF6C
/* 0822C 8080BF6C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 08230 8080BF70 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 08234 8080BF74 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 08238 8080BF78 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 0823C 8080BF7C 85CF0F34 */  lh      $t7, 0x0F34($t6)           ## 80160F34
/* 08240 8080BF80 00811021 */  addu    $v0, $a0, $at              
/* 08244 8080BF84 C4444AC4 */  lwc1    $f4, 0x4AC4($v0)           ## 00004AC4
/* 08248 8080BF88 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0824C 8080BF8C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 08250 8080BF90 00240821 */  addu    $at, $at, $a0              
/* 08254 8080BF94 46803220 */  cvt.s.w $f8, $f6                   
/* 08258 8080BF98 46082280 */  add.s   $f10, $f4, $f8             
/* 0825C 8080BF9C E42ACAC4 */  swc1    $f10, -0x353C($at)         ## 0001CAC4
/* 08260 8080BFA0 3C01441D */  lui     $at, 0x441D                ## $at = 441D0000
/* 08264 8080BFA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 628.00
/* 08268 8080BFA8 C4504AC4 */  lwc1    $f16, 0x4AC4($v0)          ## 00004AC4
/* 0826C 8080BFAC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 08270 8080BFB0 4610903E */  c.le.s  $f18, $f16                 
/* 08274 8080BFB4 00000000 */  nop
/* 08278 8080BFB8 45000008 */  bc1f    .L8080BFDC                 
/* 0827C 8080BFBC 00000000 */  nop
/* 08280 8080BFC0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 08284 8080BFC4 00240821 */  addu    $at, $at, $a0              
/* 08288 8080BFC8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0828C 8080BFCC E426CAC4 */  swc1    $f6, -0x353C($at)          ## 0001CAC4
/* 08290 8080BFD0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 08294 8080BFD4 00240821 */  addu    $at, $at, $a0              
/* 08298 8080BFD8 A438CA3E */  sh      $t8, -0x35C2($at)          ## 0001CA3E
.L8080BFDC:
/* 0829C 8080BFDC 03E00008 */  jr      $ra                        
/* 082A0 8080BFE0 00000000 */  nop
