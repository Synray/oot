glabel func_80803ED8
/* 00198 80803ED8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0019C 80803EDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001A0 80803EE0 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 001A4 80803EE4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 001A8 80803EE8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 001AC 80803EEC 00814021 */  addu    $t0, $a0, $at              
/* 001B0 80803EF0 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 001B4 80803EF4 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 001B8 80803EF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001BC 80803EFC 55230006 */  bnel    $t1, $v1, .L80803F18       
/* 001C0 80803F00 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
/* 001C4 80803F04 948E0020 */  lhu     $t6, 0x0020($a0)           ## 00000020
/* 001C8 80803F08 31CF9000 */  andi    $t7, $t6, 0x9000           ## $t7 = 00000000
/* 001CC 80803F0C 55E00007 */  bnel    $t7, $zero, .L80803F2C     
/* 001D0 80803F10 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 001D4 80803F14 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
.L80803F18:
/* 001D8 80803F18 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 001DC 80803F1C 0041C027 */  nor     $t8, $v0, $at              
/* 001E0 80803F20 17000020 */  bne     $t8, $zero, .L80803FA4     
/* 001E4 80803F24 304D9000 */  andi    $t5, $v0, 0x9000           ## $t5 = 00000000
/* 001E8 80803F28 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80803F2C:
/* 001EC 80803F2C 00300821 */  addu    $at, $at, $s0              
/* 001F0 80803F30 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 001F4 80803F34 A439CA50 */  sh      $t9, -0x35B0($at)          ## 0001CA50
/* 001F8 80803F38 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 001FC 80803F3C 00300821 */  addu    $at, $at, $s0              
/* 00200 80803F40 A429CA38 */  sh      $t1, -0x35C8($at)          ## 0001CA38
/* 00204 80803F44 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00208 80803F48 00300821 */  addu    $at, $at, $s0              
/* 0020C 80803F4C A420CA66 */  sh      $zero, -0x359A($at)        ## 0001CA66
/* 00210 80803F50 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00214 80803F54 00300821 */  addu    $at, $at, $s0              
/* 00218 80803F58 240A0013 */  addiu   $t2, $zero, 0x0013         ## $t2 = 00000013
/* 0021C 80803F5C A42ACA3E */  sh      $t2, -0x35C2($at)          ## 0001CA3E
/* 00220 80803F60 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00224 80803F64 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00228 80803F68 00300821 */  addu    $at, $at, $s0              
/* 0022C 80803F6C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00230 80803F70 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 00234 80803F74 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00238 80803F78 A42BCA60 */  sh      $t3, -0x35A0($at)          ## 0001CA60
/* 0023C 80803F7C 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 00240 80803F80 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00244 80803F84 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00248 80803F88 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 0024C 80803F8C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00250 80803F90 2404483C */  addiu   $a0, $zero, 0x483C         ## $a0 = 0000483C
/* 00254 80803F94 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00258 80803F98 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0025C 80803F9C 100000A6 */  beq     $zero, $zero, .L80804238   
/* 00260 80803FA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80803FA4:
/* 00264 80803FA4 11A00044 */  beq     $t5, $zero, .L808040B8     
/* 00268 80803FA8 00037040 */  sll     $t6, $v1,  1               
/* 0026C 80803FAC 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 00270 80803FB0 01EE7821 */  addu    $t7, $t7, $t6              
/* 00274 80803FB4 95EFA4E0 */  lhu     $t7, -0x5B20($t7)          ## 8012A4E0
/* 00278 80803FB8 8E1801E0 */  lw      $t8, 0x01E0($s0)           ## 000001E0
/* 0027C 80803FBC 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 00280 80803FC0 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00284 80803FC4 01F81021 */  addu    $v0, $t7, $t8              
/* 00288 80803FC8 9059001C */  lbu     $t9, 0x001C($v0)           ## 0000001C
/* 0028C 80803FCC 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00290 80803FD0 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00294 80803FD4 10990016 */  beq     $a0, $t9, .L80804030       
/* 00298 80803FD8 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 0029C 80803FDC 904A001D */  lbu     $t2, 0x001D($v0)           ## 0000001D
/* 002A0 80803FE0 24010045 */  addiu   $at, $zero, 0x0045         ## $at = 00000045
/* 002A4 80803FE4 51410013 */  beql    $t2, $at, .L80804034       
/* 002A8 80803FE8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 002AC 80803FEC 904B001E */  lbu     $t3, 0x001E($v0)           ## 0000001E
/* 002B0 80803FF0 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 002B4 80803FF4 5161000F */  beql    $t3, $at, .L80804034       
/* 002B8 80803FF8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 002BC 80803FFC 904C001F */  lbu     $t4, 0x001F($v0)           ## 0000001F
/* 002C0 80804000 24010044 */  addiu   $at, $zero, 0x0044         ## $at = 00000044
/* 002C4 80804004 5181000B */  beql    $t4, $at, .L80804034       
/* 002C8 80804008 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 002CC 8080400C 904D0020 */  lbu     $t5, 0x0020($v0)           ## 00000020
/* 002D0 80804010 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 002D4 80804014 51A10007 */  beql    $t5, $at, .L80804034       
/* 002D8 80804018 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 002DC 8080401C 904E0021 */  lbu     $t6, 0x0021($v0)           ## 00000021
/* 002E0 80804020 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 002E4 80804024 256B33E8 */  addiu   $t3, $t3, 0x33E8           ## $t3 = 801333E8
/* 002E8 80804028 148E0019 */  bne     $a0, $t6, .L80804090       
/* 002EC 8080402C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80804030:
/* 002F0 80804030 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80804034:
/* 002F4 80804034 00300821 */  addu    $at, $at, $s0              
/* 002F8 80804038 A42FCA50 */  sh      $t7, -0x35B0($at)          ## 0001CA50
/* 002FC 8080403C 85184A38 */  lh      $t8, 0x4A38($t0)           ## 00004A38
/* 00300 80804040 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00304 80804044 00300821 */  addu    $at, $at, $s0              
/* 00308 80804048 A438CA46 */  sh      $t8, -0x35BA($at)          ## 0001CA46
/* 0030C 8080404C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00310 80804050 00300821 */  addu    $at, $at, $s0              
/* 00314 80804054 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00318 80804058 A439CA3E */  sh      $t9, -0x35C2($at)          ## 0001CA3E
/* 0031C 8080405C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00320 80804060 00300821 */  addu    $at, $at, $s0              
/* 00324 80804064 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 00328 80804068 A429CA66 */  sh      $t1, -0x359A($at)          ## 0001CA66
/* 0032C 8080406C 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 00330 80804070 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00334 80804074 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00338 80804078 2404483B */  addiu   $a0, $zero, 0x483B         ## $a0 = 0000483B
/* 0033C 8080407C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00340 80804080 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00344 80804084 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00348 80804088 1000006B */  beq     $zero, $zero, .L80804238   
/* 0034C 8080408C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80804090:
/* 00350 80804090 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00354 80804094 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00358 80804098 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 0035C 8080409C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00360 808040A0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00364 808040A4 2404483D */  addiu   $a0, $zero, 0x483D         ## $a0 = 0000483D
/* 00368 808040A8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0036C 808040AC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00370 808040B0 10000061 */  beq     $zero, $zero, .L80804238   
/* 00374 808040B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808040B8:
/* 00378 808040B8 85024ABC */  lh      $v0, 0x4ABC($t0)           ## 00004ABC
/* 0037C 808040BC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00380 808040C0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00384 808040C4 04400003 */  bltz    $v0, .L808040D4            
/* 00388 808040C8 00022023 */  subu    $a0, $zero, $v0            
/* 0038C 808040CC 10000001 */  beq     $zero, $zero, .L808040D4   
/* 00390 808040D0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L808040D4:
/* 00394 808040D4 2881001E */  slti    $at, $a0, 0x001E           
/* 00398 808040D8 14200029 */  bne     $at, $zero, .L80804180     
/* 0039C 808040DC 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 003A0 808040E0 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 003A4 808040E4 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 003A8 808040E8 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 003AC 808040EC 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 003B0 808040F0 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 003B4 808040F4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 003B8 808040F8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 003BC 808040FC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 003C0 80804100 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 003C4 80804104 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 003C8 80804108 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 003CC 8080410C 850D4ABC */  lh      $t5, 0x4ABC($t0)           ## 00004ABC
/* 003D0 80804110 29A1001E */  slti    $at, $t5, 0x001E           
/* 003D4 80804114 5420000F */  bnel    $at, $zero, .L80804154     
/* 003D8 80804118 85184A38 */  lh      $t8, 0x4A38($t0)           ## 00004A38
/* 003DC 8080411C 850E4A38 */  lh      $t6, 0x4A38($t0)           ## 00004A38
/* 003E0 80804120 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 003E4 80804124 00300821 */  addu    $at, $at, $s0              
/* 003E8 80804128 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 003EC 8080412C A42FCA38 */  sh      $t7, -0x35C8($at)          ## 0001CA38
/* 003F0 80804130 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 003F4 80804134 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 003F8 80804138 00300821 */  addu    $at, $at, $s0              
/* 003FC 8080413C 04610010 */  bgez    $v1, .L80804180            
/* 00400 80804140 00000000 */  nop
/* 00404 80804144 A429CA38 */  sh      $t1, -0x35C8($at)          ## 0001CA38
/* 00408 80804148 1000000D */  beq     $zero, $zero, .L80804180   
/* 0040C 8080414C 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 00410 80804150 85184A38 */  lh      $t8, 0x4A38($t0)           ## 00004A38
.L80804154:
/* 00414 80804154 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00418 80804158 00300821 */  addu    $at, $at, $s0              
/* 0041C 8080415C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00420 80804160 A439CA38 */  sh      $t9, -0x35C8($at)          ## 0001CA38
/* 00424 80804164 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 00428 80804168 28610004 */  slti    $at, $v1, 0x0004           
/* 0042C 8080416C 14200004 */  bne     $at, $zero, .L80804180     
/* 00430 80804170 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00434 80804174 00300821 */  addu    $at, $at, $s0              
/* 00438 80804178 A420CA38 */  sh      $zero, -0x35C8($at)        ## 0001CA38
/* 0043C 8080417C 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
.L80804180:
/* 00440 80804180 1123002C */  beq     $t1, $v1, .L80804234       
/* 00444 80804184 00035040 */  sll     $t2, $v1,  1               
/* 00448 80804188 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 0044C 8080418C 016A5821 */  addu    $t3, $t3, $t2              
/* 00450 80804190 956BA4E0 */  lhu     $t3, -0x5B20($t3)          ## 8012A4E0
/* 00454 80804194 8E0C01E0 */  lw      $t4, 0x01E0($s0)           ## 000001E0
/* 00458 80804198 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 0045C 8080419C 016C1021 */  addu    $v0, $t3, $t4              
/* 00460 808041A0 904D001C */  lbu     $t5, 0x001C($v0)           ## 0000001C
/* 00464 808041A4 508D0020 */  beql    $a0, $t5, .L80804228       
/* 00468 808041A8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0046C 808041AC 904E001D */  lbu     $t6, 0x001D($v0)           ## 0000001D
/* 00470 808041B0 24010045 */  addiu   $at, $zero, 0x0045         ## $at = 00000045
/* 00474 808041B4 51C1001C */  beql    $t6, $at, .L80804228       
/* 00478 808041B8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0047C 808041BC 904F001E */  lbu     $t7, 0x001E($v0)           ## 0000001E
/* 00480 808041C0 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 00484 808041C4 51E10018 */  beql    $t7, $at, .L80804228       
/* 00488 808041C8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0048C 808041CC 9058001F */  lbu     $t8, 0x001F($v0)           ## 0000001F
/* 00490 808041D0 24010044 */  addiu   $at, $zero, 0x0044         ## $at = 00000044
/* 00494 808041D4 53010014 */  beql    $t8, $at, .L80804228       
/* 00498 808041D8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0049C 808041DC 90590020 */  lbu     $t9, 0x0020($v0)           ## 00000020
/* 004A0 808041E0 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 004A4 808041E4 53210010 */  beql    $t9, $at, .L80804228       
/* 004A8 808041E8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 004AC 808041EC 904A0021 */  lbu     $t2, 0x0021($v0)           ## 00000021
/* 004B0 808041F0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 004B4 808041F4 00300821 */  addu    $at, $at, $s0              
/* 004B8 808041F8 108A000A */  beq     $a0, $t2, .L80804224       
/* 004BC 808041FC 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 004C0 80804200 A429CA60 */  sh      $t1, -0x35A0($at)          ## 0001CA60
/* 004C4 80804204 850B4A38 */  lh      $t3, 0x4A38($t0)           ## 00004A38
/* 004C8 80804208 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 004CC 8080420C 00300821 */  addu    $at, $at, $s0              
/* 004D0 80804210 A42BCA62 */  sh      $t3, -0x359E($at)          ## 0001CA62
/* 004D4 80804214 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 004D8 80804218 00300821 */  addu    $at, $at, $s0              
/* 004DC 8080421C 10000005 */  beq     $zero, $zero, .L80804234   
/* 004E0 80804220 A42CCAA0 */  sh      $t4, -0x3560($at)          ## 0001CAA0
.L80804224:
/* 004E4 80804224 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80804228:
/* 004E8 80804228 00300821 */  addu    $at, $at, $s0              
/* 004EC 8080422C 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 004F0 80804230 A42DCA60 */  sh      $t5, -0x35A0($at)          ## 0001CA60
.L80804234:
/* 004F4 80804234 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80804238:
/* 004F8 80804238 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004FC 8080423C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00500 80804240 03E00008 */  jr      $ra                        
/* 00504 80804244 00000000 */  nop
