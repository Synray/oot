glabel func_80AE78D4
/* 00624 80AE78D4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00628 80AE78D8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0062C 80AE78DC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00630 80AE78E0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00634 80AE78E4 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00638 80AE78E8 C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 0063C 80AE78EC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00640 80AE78F0 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00644 80AE78F4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00648 80AE78F8 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 0064C 80AE78FC 85CF1478 */  lh      $t7, 0x1478($t6)           ## 80161478
/* 00650 80AE7900 44815000 */  mtc1    $at, $f10                  ## $f10 = 22.00
/* 00654 80AE7904 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 00658 80AE7908 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0065C 80AE790C 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00660 80AE7910 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00664 80AE7914 46803220 */  cvt.s.w $f8, $f6                   
/* 00668 80AE7918 240700F5 */  addiu   $a3, $zero, 0x00F5         ## $a3 = 000000F5
/* 0066C 80AE791C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00670 80AE7920 46128100 */  add.s   $f4, $f16, $f18            
/* 00674 80AE7924 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 00678 80AE7928 C4A6002C */  lwc1    $f6, 0x002C($a1)           ## 0000002C
/* 0067C 80AE792C AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00680 80AE7930 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00684 80AE7934 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00688 80AE7938 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0068C 80AE793C 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00690 80AE7940 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00694 80AE7944 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00698 80AE7948 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0069C 80AE794C 03E00008 */  jr      $ra                        
/* 006A0 80AE7950 00000000 */  nop
