.late_rodata
glabel jtbl_80B20C80
.word L80B205B8
.word L80B205B8
.word L80B205B8
.word L80B205B8
.word L80B2042C
.word L80B205B8
.word L80B204AC
glabel jtbl_80B20C9C
.word L80B20570
.word L80B205A0
.word L80B205A0
.word L80B205A0
.word L80B205A0
.word L80B20540

.text
glabel func_80B203D8
/* 00268 80B203D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0026C 80B203DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00270 80B203E0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00274 80B203E4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00278 80B203E8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0027C 80B203EC AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00280 80B203F0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00284 80B203F4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00288 80B203F8 0C042F6F */  jal     func_8010BDBC              
/* 0028C 80B203FC AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 00290 80B20400 2C410007 */  sltiu   $at, $v0, 0x0007           
/* 00294 80B20404 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00298 80B20408 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0029C 80B2040C 1020006A */  beq     $at, $zero, .L80B205B8     
/* 002A0 80B20410 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 002A4 80B20414 00027880 */  sll     $t7, $v0,  2               
/* 002A8 80B20418 3C0180B2 */  lui     $at, %hi(jtbl_80B20C80)       ## $at = 80B20000
/* 002AC 80B2041C 002F0821 */  addu    $at, $at, $t7              
/* 002B0 80B20420 8C2F0C80 */  lw      $t7, %lo(jtbl_80B20C80)($at)  
/* 002B4 80B20424 01E00008 */  jr      $t7                        
/* 002B8 80B20428 00000000 */  nop
glabel L80B2042C
/* 002BC 80B2042C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C0 80B20430 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 002C4 80B20434 0C041AF2 */  jal     func_80106BC8              
/* 002C8 80B20438 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 002CC 80B2043C 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 002D0 80B20440 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 002D4 80B20444 1040005C */  beq     $v0, $zero, .L80B205B8     
/* 002D8 80B20448 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 002DC 80B2044C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 002E0 80B20450 0305C021 */  addu    $t8, $t8, $a1              
/* 002E4 80B20454 931804BD */  lbu     $t8, 0x04BD($t8)           ## 000104BD
/* 002E8 80B20458 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002EC 80B2045C 240A606F */  addiu   $t2, $zero, 0x606F         ## $t2 = 0000606F
/* 002F0 80B20460 17000010 */  bne     $t8, $zero, .L80B204A4     
/* 002F4 80B20464 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 002F8 80B20468 0C041B33 */  jal     func_80106CCC              
/* 002FC 80B2046C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00300 80B20470 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00304 80B20474 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00308 80B20478 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0030C 80B2047C AC600118 */  sw      $zero, 0x0118($v1)         ## 00000118
/* 00310 80B20480 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00314 80B20484 24080037 */  addiu   $t0, $zero, 0x0037         ## $t0 = 00000037
/* 00318 80B20488 00250821 */  addu    $at, $at, $a1              
/* 0031C 80B2048C A3200693 */  sb      $zero, 0x0693($t9)         ## 00000693
/* 00320 80B20490 A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
/* 00324 80B20494 2409601B */  addiu   $t1, $zero, 0x601B         ## $t1 = 0000601B
/* 00328 80B20498 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0032C 80B2049C 10000046 */  beq     $zero, $zero, .L80B205B8   
/* 00330 80B204A0 A469010E */  sh      $t1, 0x010E($v1)           ## 0000010E
.L80B204A4:
/* 00334 80B204A4 10000044 */  beq     $zero, $zero, .L80B205B8   
/* 00338 80B204A8 A46A010E */  sh      $t2, 0x010E($v1)           ## 0000010E
glabel L80B204AC
/* 0033C 80B204AC 9462010E */  lhu     $v0, 0x010E($v1)           ## 0000010E
/* 00340 80B204B0 2841601C */  slti    $at, $v0, 0x601C           
/* 00344 80B204B4 14200009 */  bne     $at, $zero, .L80B204DC     
/* 00348 80B204B8 244B9F96 */  addiu   $t3, $v0, 0x9F96           ## $t3 = FFFF9F96
/* 0034C 80B204BC 2D610006 */  sltiu   $at, $t3, 0x0006           
/* 00350 80B204C0 10200037 */  beq     $at, $zero, .L80B205A0     
/* 00354 80B204C4 000B5880 */  sll     $t3, $t3,  2               
/* 00358 80B204C8 3C0180B2 */  lui     $at, %hi(jtbl_80B20C9C)       ## $at = 80B20000
/* 0035C 80B204CC 002B0821 */  addu    $at, $at, $t3              
/* 00360 80B204D0 8C2B0C9C */  lw      $t3, %lo(jtbl_80B20C9C)($at)  
/* 00364 80B204D4 01600008 */  jr      $t3                        
/* 00368 80B204D8 00000000 */  nop
.L80B204DC:
/* 0036C 80B204DC 24015028 */  addiu   $at, $zero, 0x5028         ## $at = 00005028
/* 00370 80B204E0 10410006 */  beq     $v0, $at, .L80B204FC       
/* 00374 80B204E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00378 80B204E8 2401601B */  addiu   $at, $zero, 0x601B         ## $at = 0000601B
/* 0037C 80B204EC 1041000E */  beq     $v0, $at, .L80B20528       
/* 00380 80B204F0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00384 80B204F4 1000002B */  beq     $zero, $zero, .L80B205A4   
/* 00388 80B204F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80B204FC:
/* 0038C 80B204FC 0C041AF2 */  jal     func_80106BC8              
/* 00390 80B20500 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00394 80B20504 1040002C */  beq     $v0, $zero, .L80B205B8     
/* 00398 80B20508 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0039C 80B2050C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 003A0 80B20510 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 003A4 80B20514 944C0F26 */  lhu     $t4, 0x0F26($v0)           ## 8015F586
/* 003A8 80B20518 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003AC 80B2051C 358D0004 */  ori     $t5, $t4, 0x0004           ## $t5 = 00000004
/* 003B0 80B20520 10000025 */  beq     $zero, $zero, .L80B205B8   
/* 003B4 80B20524 A44D0F26 */  sh      $t5, 0x0F26($v0)           ## 8015F586
.L80B20528:
/* 003B8 80B20528 0C041AF2 */  jal     func_80106BC8              
/* 003BC 80B2052C AFA6001C */  sw      $a2, 0x001C($sp)           
/* 003C0 80B20530 10400021 */  beq     $v0, $zero, .L80B205B8     
/* 003C4 80B20534 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 003C8 80B20538 1000001F */  beq     $zero, $zero, .L80B205B8   
/* 003CC 80B2053C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
glabel L80B20540
/* 003D0 80B20540 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003D4 80B20544 0C041AF2 */  jal     func_80106BC8              
/* 003D8 80B20548 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 003DC 80B2054C 1040001A */  beq     $v0, $zero, .L80B205B8     
/* 003E0 80B20550 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 003E4 80B20554 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 003E8 80B20558 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 003EC 80B2055C 944E0F26 */  lhu     $t6, 0x0F26($v0)           ## 8015F586
/* 003F0 80B20560 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003F4 80B20564 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 003F8 80B20568 10000013 */  beq     $zero, $zero, .L80B205B8   
/* 003FC 80B2056C A44F0F26 */  sh      $t7, 0x0F26($v0)           ## 8015F586
glabel L80B20570
/* 00400 80B20570 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00404 80B20574 0C041AF2 */  jal     func_80106BC8              
/* 00408 80B20578 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0040C 80B2057C 1040000E */  beq     $v0, $zero, .L80B205B8     
/* 00410 80B20580 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00414 80B20584 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00418 80B20588 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0041C 80B2058C 94580F26 */  lhu     $t8, 0x0F26($v0)           ## 8015F586
/* 00420 80B20590 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00424 80B20594 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00428 80B20598 10000007 */  beq     $zero, $zero, .L80B205B8   
/* 0042C 80B2059C A4590F26 */  sh      $t9, 0x0F26($v0)           ## 8015F586
glabel L80B205A0
.L80B205A0:
/* 00430 80B205A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80B205A4:
/* 00434 80B205A4 0C041AF2 */  jal     func_80106BC8              
/* 00438 80B205A8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0043C 80B205AC 10400002 */  beq     $v0, $zero, .L80B205B8     
/* 00440 80B205B0 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00444 80B205B4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
glabel L80B205B8
.L80B205B8:
/* 00448 80B205B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0044C 80B205BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00450 80B205C0 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 00454 80B205C4 03E00008 */  jr      $ra                        
/* 00458 80B205C8 00000000 */  nop
