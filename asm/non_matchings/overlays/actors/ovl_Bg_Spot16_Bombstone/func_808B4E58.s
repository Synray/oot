.rdata
glabel D_808B60BC
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808B60EC
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

.late_rodata
glabel D_808B6238
 .word 0x3ADA740E

.text
glabel func_808B4E58
/* 00228 808B4E58 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0022C 808B4E5C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00230 808B4E60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00234 808B4E64 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00238 808B4E68 3C05808B */  lui     $a1, %hi(D_808B6048)       ## $a1 = 808B0000
/* 0023C 808B4E6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00240 808B4E70 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00244 808B4E74 24A56048 */  addiu   $a1, $a1, %lo(D_808B6048)  ## $a1 = 808B6048
/* 00248 808B4E78 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0024C 808B4E7C 3C18808B */  lui     $t8, %hi(D_808B5DD8)       ## $t8 = 808B0000
/* 00250 808B4E80 27185DD8 */  addiu   $t8, $t8, %lo(D_808B5DD8)  ## $t8 = 808B5DD8
/* 00254 808B4E84 000E7880 */  sll     $t7, $t6,  2               
/* 00258 808B4E88 01EE7821 */  addu    $t7, $t7, $t6              
/* 0025C 808B4E8C 000F7880 */  sll     $t7, $t7,  2               
/* 00260 808B4E90 01F81021 */  addu    $v0, $t7, $t8              
/* 00264 808B4E94 84590000 */  lh      $t9, 0x0000($v0)           ## 00000000
/* 00268 808B4E98 3C01808B */  lui     $at, %hi(D_808B6238)       ## $at = 808B0000
/* 0026C 808B4E9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00270 808B4EA0 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00274 808B4EA4 00000000 */  nop
/* 00278 808B4EA8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0027C 808B4EAC E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00280 808B4EB0 84480002 */  lh      $t0, 0x0002($v0)           ## 00000002
/* 00284 808B4EB4 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00288 808B4EB8 00000000 */  nop
/* 0028C 808B4EBC 468042A0 */  cvt.s.w $f10, $f8                  
/* 00290 808B4EC0 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 00294 808B4EC4 84490004 */  lh      $t1, 0x0004($v0)           ## 00000004
/* 00298 808B4EC8 C4246238 */  lwc1    $f4, %lo(D_808B6238)($at)  
/* 0029C 808B4ECC 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 002A0 808B4ED0 00000000 */  nop
/* 002A4 808B4ED4 468084A0 */  cvt.s.w $f18, $f16                 
/* 002A8 808B4ED8 46049182 */  mul.s   $f6, $f18, $f4             
/* 002AC 808B4EDC 44053000 */  mfc1    $a1, $f6                   
/* 002B0 808B4EE0 0C00B58B */  jal     Actor_SetScale
              
/* 002B4 808B4EE4 00000000 */  nop
/* 002B8 808B4EE8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 002BC 808B4EEC 24030014 */  addiu   $v1, $zero, 0x0014         ## $v1 = 00000014
/* 002C0 808B4EF0 3C02808B */  lui     $v0, %hi(D_808B5DD8)       ## $v0 = 808B0000
/* 002C4 808B4EF4 01430019 */  multu   $t2, $v1                   
/* 002C8 808B4EF8 24425DD8 */  addiu   $v0, $v0, %lo(D_808B5DD8)  ## $v0 = 808B5DD8
/* 002CC 808B4EFC 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 002D0 808B4F00 00005812 */  mflo    $t3                        
/* 002D4 808B4F04 004B6021 */  addu    $t4, $v0, $t3              
/* 002D8 808B4F08 858D0006 */  lh      $t5, 0x0006($t4)           ## 00000006
/* 002DC 808B4F0C 03030019 */  multu   $t8, $v1                   
/* 002E0 808B4F10 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 002E4 808B4F14 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 002E8 808B4F18 00000000 */  nop
/* 002EC 808B4F1C 468042A0 */  cvt.s.w $f10, $f8                  
/* 002F0 808B4F20 0000C812 */  mflo    $t9                        
/* 002F4 808B4F24 4600540D */  trunc.w.s $f16, $f10                 
/* 002F8 808B4F28 00594021 */  addu    $t0, $v0, $t9              
/* 002FC 808B4F2C 01830019 */  multu   $t4, $v1                   
/* 00300 808B4F30 440F8000 */  mfc1    $t7, $f16                  
/* 00304 808B4F34 00000000 */  nop
/* 00308 808B4F38 A60F0210 */  sh      $t7, 0x0210($s0)           ## 00000210
/* 0030C 808B4F3C 85090008 */  lh      $t1, 0x0008($t0)           ## 00000008
/* 00310 808B4F40 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00314 808B4F44 00006812 */  mflo    $t5                        
/* 00318 808B4F48 004D7021 */  addu    $t6, $v0, $t5              
/* 0031C 808B4F4C 46809120 */  cvt.s.w $f4, $f18                  
/* 00320 808B4F50 4600218D */  trunc.w.s $f6, $f4                   
/* 00324 808B4F54 440B3000 */  mfc1    $t3, $f6                   
/* 00328 808B4F58 00000000 */  nop
/* 0032C 808B4F5C A60B0212 */  sh      $t3, 0x0212($s0)           ## 00000212
/* 00330 808B4F60 85CF000A */  lh      $t7, 0x000A($t6)           ## 0000000A
/* 00334 808B4F64 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00338 808B4F68 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0033C 808B4F6C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00340 808B4F70 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00344 808B4F74 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00348 808B4F78 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 0034C 808B4F7C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00350 808B4F80 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 00354 808B4F84 C7A80020 */  lwc1    $f8, 0x0020($sp)           
/* 00358 808B4F88 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 0035C 808B4F8C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00360 808B4F90 46024282 */  mul.s   $f10, $f8, $f2             
/* 00364 808B4F94 3C08808B */  lui     $t0, %hi(D_808B5DD8)       ## $t0 = 808B0000
/* 00368 808B4F98 0018C880 */  sll     $t9, $t8,  2               
/* 0036C 808B4F9C 0338C821 */  addu    $t9, $t9, $t8              
/* 00370 808B4FA0 0019C880 */  sll     $t9, $t9,  2               
/* 00374 808B4FA4 25085DD8 */  addiu   $t0, $t0, %lo(D_808B5DD8)  ## $t0 = 808B5DD8
/* 00378 808B4FA8 03281021 */  addu    $v0, $t9, $t0              
/* 0037C 808B4FAC 46105480 */  add.s   $f18, $f10, $f16           
/* 00380 808B4FB0 46020402 */  mul.s   $f16, $f0, $f2             
/* 00384 808B4FB4 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00388 808B4FB8 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 0038C 808B4FBC E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 00390 808B4FC0 8449000C */  lh      $t1, 0x000C($v0)           ## 0000000C
/* 00394 808B4FC4 C6120010 */  lwc1    $f18, 0x0010($s0)          ## 00000010
/* 00398 808B4FC8 25AD09E0 */  addiu   $t5, $t5, 0x09E0           ## $t5 = 060009E0
/* 0039C 808B4FCC 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 003A0 808B4FD0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003A4 808B4FD4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 003A8 808B4FD8 468021A0 */  cvt.s.w $f6, $f4                   
/* 003AC 808B4FDC 24050163 */  addiu   $a1, $zero, 0x0163         ## $a1 = 00000163
/* 003B0 808B4FE0 46128100 */  add.s   $f4, $f16, $f18            
/* 003B4 808B4FE4 46083280 */  add.s   $f10, $f6, $f8             
/* 003B8 808B4FE8 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 003BC 808B4FEC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 003C0 808B4FF0 844A000E */  lh      $t2, 0x000E($v0)           ## 0000000E
/* 003C4 808B4FF4 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 003C8 808B4FF8 844B0010 */  lh      $t3, 0x0010($v0)           ## 00000010
/* 003CC 808B4FFC A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 003D0 808B5000 844C0012 */  lh      $t4, 0x0012($v0)           ## 00000012
/* 003D4 808B5004 AE0D0150 */  sw      $t5, 0x0150($s0)           ## 00000150
/* 003D8 808B5008 A60C00B8 */  sh      $t4, 0x00B8($s0)           ## 000000B8
/* 003DC 808B500C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003E0 808B5010 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 003E4 808B5014 00812021 */  addu    $a0, $a0, $at              
/* 003E8 808B5018 A2020214 */  sb      $v0, 0x0214($s0)           ## 00000214
/* 003EC 808B501C 820E0214 */  lb      $t6, 0x0214($s0)           ## 00000214
/* 003F0 808B5020 3C04808B */  lui     $a0, %hi(D_808B60BC)       ## $a0 = 808B0000
/* 003F4 808B5024 248460BC */  addiu   $a0, $a0, %lo(D_808B60BC)  ## $a0 = 808B60BC
/* 003F8 808B5028 05C10007 */  bgez    $t6, .L808B5048            
/* 003FC 808B502C 3C06808B */  lui     $a2, %hi(D_808B60EC)       ## $a2 = 808B0000
/* 00400 808B5030 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00404 808B5034 24C660EC */  addiu   $a2, $a2, %lo(D_808B60EC)  ## $a2 = 808B60EC
/* 00408 808B5038 0C00084C */  jal     osSyncPrintf
              
/* 0040C 808B503C 2407024D */  addiu   $a3, $zero, 0x024D         ## $a3 = 0000024D
/* 00410 808B5040 10000004 */  beq     $zero, $zero, .L808B5054   
/* 00414 808B5044 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B5048:
/* 00418 808B5048 0C22D6BC */  jal     func_808B5AF0              
/* 0041C 808B504C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00420 808B5050 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B5054:
/* 00424 808B5054 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00428 808B5058 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0042C 808B505C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00430 808B5060 03E00008 */  jr      $ra                        
/* 00434 808B5064 00000000 */  nop
