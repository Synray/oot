glabel func_80A40A54
/* 024E4 80A40A54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 024E8 80A40A58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 024EC 80A40A5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 024F0 80A40A60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 024F4 80A40A64 3C040601 */  lui     $a0, %hi(D_06010590)                ## $a0 = 06010000
/* 024F8 80A40A68 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 024FC 80A40A6C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02500 80A40A70 24840590 */  addiu   $a0, $a0, %lo(D_06010590)           ## $a0 = 06010590
/* 02504 80A40A74 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 02508 80A40A78 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0250C 80A40A7C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 02510 80A40A80 46803220 */  cvt.s.w $f8, $f6                   
/* 02514 80A40A84 C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 02518 80A40A88 46082283 */  div.s   $f10, $f4, $f8             
/* 0251C 80A40A8C 460A8002 */  mul.s   $f0, $f16, $f10            
/* 02520 80A40A90 4600048D */  trunc.w.s $f18, $f0                  
/* 02524 80A40A94 44049000 */  mfc1    $a0, $f18                  
/* 02528 80A40A98 00000000 */  nop
/* 0252C 80A40A9C 00042400 */  sll     $a0, $a0, 16               
/* 02530 80A40AA0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02534 80A40AA4 00042403 */  sra     $a0, $a0, 16               
/* 02538 80A40AA8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0253C 80A40AAC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02540 80A40AB0 0C28FCC0 */  jal     func_80A3F300              
/* 02544 80A40AB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02548 80A40AB8 50400014 */  beql    $v0, $zero, .L80A40B0C     
/* 0254C 80A40ABC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02550 80A40AC0 860F0218 */  lh      $t7, 0x0218($s0)           ## 00000218
/* 02554 80A40AC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02558 80A40AC8 55E00010 */  bnel    $t7, $zero, .L80A40B0C     
/* 0255C 80A40ACC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02560 80A40AD0 0C28FB78 */  jal     func_80A3EDE0              
/* 02564 80A40AD4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02568 80A40AD8 3C040600 */  lui     $a0, %hi(D_06004930)                ## $a0 = 06000000
/* 0256C 80A40ADC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02570 80A40AE0 24844930 */  addiu   $a0, $a0, %lo(D_06004930)           ## $a0 = 06004930
/* 02574 80A40AE4 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 02578 80A40AE8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0257C 80A40AEC 3C0580A4 */  lui     $a1, %hi(func_80A406E0)    ## $a1 = 80A40000
/* 02580 80A40AF0 46803120 */  cvt.s.w $f4, $f6                   
/* 02584 80A40AF4 24A506E0 */  addiu   $a1, $a1, %lo(func_80A406E0) ## $a1 = 80A406E0
/* 02588 80A40AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0258C 80A40AFC E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 02590 80A40B00 0C28F95C */  jal     func_80A3E570              
/* 02594 80A40B04 E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 02598 80A40B08 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A40B0C:
/* 0259C 80A40B0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 025A0 80A40B10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 025A4 80A40B14 03E00008 */  jr      $ra                        
/* 025A8 80A40B18 00000000 */  nop
