.rdata
glabel D_80B98008
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98020
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98038
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98050
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98068
    .asciz "../z_obj_lightswitch.c"
    .balign 4

.text
glabel func_80B977D0
/* 00C30 80B977D0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00C34 80B977D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C38 80B977D8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00C3C 80B977DC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00C40 80B977E0 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00C44 80B977E4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00C48 80B977E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C4C 80B977EC 3C0680BA */  lui     $a2, %hi(D_80B98008)       ## $a2 = 80BA0000
/* 00C50 80B977F0 24C68008 */  addiu   $a2, $a2, %lo(D_80B98008)  ## $a2 = 80B98008
/* 00C54 80B977F4 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFD4
/* 00C58 80B977F8 24070329 */  addiu   $a3, $zero, 0x0329         ## $a3 = 00000329
/* 00C5C 80B977FC 0C031AB1 */  jal     Graph_OpenDisps              
/* 00C60 80B97800 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C64 80B97804 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 00C68 80B97808 0C024F46 */  jal     func_80093D18              
/* 00C6C 80B9780C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00C70 80B97810 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00C74 80B97814 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00C78 80B97818 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C7C 80B9781C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00C80 80B97820 AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 00C84 80B97824 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00C88 80B97828 860D01B6 */  lh      $t5, 0x01B6($s0)           ## 000001B6
/* 00C8C 80B9782C 860801BA */  lh      $t0, 0x01BA($s0)           ## 000001BA
/* 00C90 80B97830 860901B8 */  lh      $t1, 0x01B8($s0)           ## 000001B8
/* 00C94 80B97834 000DC183 */  sra     $t8, $t5,  6               
/* 00C98 80B97838 00085183 */  sra     $t2, $t0,  6               
/* 00C9C 80B9783C 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00CA0 80B97840 0018CE00 */  sll     $t9, $t8, 24               
/* 00CA4 80B97844 861801BC */  lh      $t8, 0x01BC($s0)           ## 000001BC
/* 00CA8 80B97848 000B6200 */  sll     $t4, $t3,  8               
/* 00CAC 80B9784C 00095983 */  sra     $t3, $t1,  6               
/* 00CB0 80B97850 316D00FF */  andi    $t5, $t3, 0x00FF           ## $t5 = 00000000
/* 00CB4 80B97854 01994025 */  or      $t0, $t4, $t9              ## $t0 = FB000000
/* 00CB8 80B97858 000D7400 */  sll     $t6, $t5, 16               
/* 00CBC 80B9785C 0018C983 */  sra     $t9, $t8,  6               
/* 00CC0 80B97860 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 00CC4 80B97864 010E7825 */  or      $t7, $t0, $t6              ## $t7 = FB000000
/* 00CC8 80B97868 01E95025 */  or      $t2, $t7, $t1              ## $t2 = FB000000
/* 00CCC 80B9786C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00CD0 80B97870 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00CD4 80B97874 3C088011 */  lui     $t0, 0x8011                ## $t0 = 80110000
/* 00CD8 80B97878 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 00CDC 80B9787C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00CE0 80B97880 AE2B02C0 */  sw      $t3, 0x02C0($s1)           ## 000002C0
/* 00CE4 80B97884 35AD0024 */  ori     $t5, $t5, 0x0024           ## $t5 = DB060024
/* 00CE8 80B97888 25086290 */  addiu   $t0, $t0, 0x6290           ## $t0 = 80116290
/* 00CEC 80B9788C AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 00CF0 80B97890 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00CF4 80B97894 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00CF8 80B97898 31D80001 */  andi    $t8, $t6, 0x0001           ## $t8 = 00000000
/* 00CFC 80B9789C 5701001B */  bnel    $t8, $at, .L80B9790C       
/* 00D00 80B978A0 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00D04 80B978A4 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00D08 80B978A8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00D0C 80B978AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00D10 80B978B0 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00D14 80B978B4 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFF0
/* 00D18 80B978B8 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00D1C 80B978BC E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 00D20 80B978C0 C4460028 */  lwc1    $f6, 0x0028($v0)           ## 00000028
/* 00D24 80B978C4 46083280 */  add.s   $f10, $f6, $f8             
/* 00D28 80B978C8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00D2C 80B978CC C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 00D30 80B978D0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00D34 80B978D4 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 00D38 80B978D8 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 00D3C 80B978DC C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 00D40 80B978E0 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 00D44 80B978E4 0C0345A5 */  jal     func_800D1694              
/* 00D48 80B978E8 260700B4 */  addiu   $a3, $s0, 0x00B4           ## $a3 = 000000B4
/* 00D4C 80B978EC C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 00D50 80B978F0 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 00D54 80B978F4 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 00D58 80B978F8 0C0342A3 */  jal     Matrix_Scale              
/* 00D5C 80B978FC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D60 80B97900 1000000C */  beq     $zero, $zero, .L80B97934   
/* 00D64 80B97904 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00D68 80B97908 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
.L80B9790C:
/* 00D6C 80B9790C E7B20068 */  swc1    $f18, 0x0068($sp)          
/* 00D70 80B97910 C6060054 */  lwc1    $f6, 0x0054($s0)           ## 00000054
/* 00D74 80B97914 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00D78 80B97918 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00D7C 80B9791C 46062202 */  mul.s   $f8, $f4, $f6              
/* 00D80 80B97920 46085400 */  add.s   $f16, $f10, $f8            
/* 00D84 80B97924 E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 00D88 80B97928 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00D8C 80B9792C E7B20070 */  swc1    $f18, 0x0070($sp)          
/* 00D90 80B97930 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
.L80B97934:
/* 00D94 80B97934 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00D98 80B97938 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00D9C 80B9793C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00DA0 80B97940 AE2C02C0 */  sw      $t4, 0x02C0($s1)           ## 000002C0
/* 00DA4 80B97944 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00DA8 80B97948 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 00DAC 80B9794C 3C0580BA */  lui     $a1, %hi(D_80B98020)       ## $a1 = 80BA0000
/* 00DB0 80B97950 24A58020 */  addiu   $a1, $a1, %lo(D_80B98020)  ## $a1 = 80B98020
/* 00DB4 80B97954 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00DB8 80B97958 24060349 */  addiu   $a2, $zero, 0x0349         ## $a2 = 00000349
/* 00DBC 80B9795C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00DC0 80B97960 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 00DC4 80B97964 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 00DC8 80B97968 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00DCC 80B9796C 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00DD0 80B97970 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00DD4 80B97974 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00DD8 80B97978 3C0480B9 */  lui     $a0, %hi(D_80B97F5C)       ## $a0 = 80B90000
/* 00DDC 80B9797C 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00DE0 80B97980 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00DE4 80B97984 AE2902C0 */  sw      $t1, 0x02C0($s1)           ## 000002C0
/* 00DE8 80B97988 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00DEC 80B9798C 860B01B4 */  lh      $t3, 0x01B4($s0)           ## 000001B4
/* 00DF0 80B97990 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00DF4 80B97994 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00DF8 80B97998 000B6880 */  sll     $t5, $t3,  2               
/* 00DFC 80B9799C 008D2021 */  addu    $a0, $a0, $t5              
/* 00E00 80B979A0 8C847F5C */  lw      $a0, %lo(D_80B97F5C)($a0)  
/* 00E04 80B979A4 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00E08 80B979A8 25AD0260 */  addiu   $t5, $t5, 0x0260           ## $t5 = 06000260
/* 00E0C 80B979AC 00047100 */  sll     $t6, $a0,  4               
/* 00E10 80B979B0 000EC702 */  srl     $t8, $t6, 28               
/* 00E14 80B979B4 00186080 */  sll     $t4, $t8,  2               
/* 00E18 80B979B8 032CC821 */  addu    $t9, $t9, $t4              
/* 00E1C 80B979BC 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 00E20 80B979C0 00814024 */  and     $t0, $a0, $at              
/* 00E24 80B979C4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E28 80B979C8 01197821 */  addu    $t7, $t0, $t9              
/* 00E2C 80B979CC 01E14821 */  addu    $t1, $t7, $at              
/* 00E30 80B979D0 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00E34 80B979D4 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00E38 80B979D8 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00E3C 80B979DC 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE8
/* 00E40 80B979E0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00E44 80B979E4 AE2A02C0 */  sw      $t2, 0x02C0($s1)           ## 000002C0
/* 00E48 80B979E8 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00E4C 80B979EC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00E50 80B979F0 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00E54 80B979F4 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 00E58 80B979F8 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 00E5C 80B979FC A7AE0060 */  sh      $t6, 0x0060($sp)           
/* 00E60 80B97A00 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 00E64 80B97A04 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 00E68 80B97A08 A7B80062 */  sh      $t8, 0x0062($sp)           
/* 00E6C 80B97A0C 860801BE */  lh      $t0, 0x01BE($s0)           ## 000001BE
/* 00E70 80B97A10 860C00B8 */  lh      $t4, 0x00B8($s0)           ## 000000B8
/* 00E74 80B97A14 0188C821 */  addu    $t9, $t4, $t0              
/* 00E78 80B97A18 0C0345A5 */  jal     func_800D1694              
/* 00E7C 80B97A1C A7B90064 */  sh      $t9, 0x0064($sp)           
/* 00E80 80B97A20 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 00E84 80B97A24 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 00E88 80B97A28 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 00E8C 80B97A2C 0C0342A3 */  jal     Matrix_Scale              
/* 00E90 80B97A30 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00E94 80B97A34 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00E98 80B97A38 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00E9C 80B97A3C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00EA0 80B97A40 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00EA4 80B97A44 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 00EA8 80B97A48 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00EAC 80B97A4C 8FAA007C */  lw      $t2, 0x007C($sp)           
/* 00EB0 80B97A50 3C0580BA */  lui     $a1, %hi(D_80B98038)       ## $a1 = 80BA0000
/* 00EB4 80B97A54 24A58038 */  addiu   $a1, $a1, %lo(D_80B98038)  ## $a1 = 80B98038
/* 00EB8 80B97A58 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 00EBC 80B97A5C 2406035B */  addiu   $a2, $zero, 0x035B         ## $a2 = 0000035B
/* 00EC0 80B97A60 0C0346A2 */  jal     Matrix_NewMtx              
/* 00EC4 80B97A64 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 00EC8 80B97A68 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 00ECC 80B97A6C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00ED0 80B97A70 25CE0398 */  addiu   $t6, $t6, 0x0398           ## $t6 = 06000398
/* 00ED4 80B97A74 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00ED8 80B97A78 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00EDC 80B97A7C 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 00EE0 80B97A80 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE8
/* 00EE4 80B97A84 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00EE8 80B97A88 AE2B02C0 */  sw      $t3, 0x02C0($s1)           ## 000002C0
/* 00EEC 80B97A8C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00EF0 80B97A90 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00EF4 80B97A94 860C01BE */  lh      $t4, 0x01BE($s0)           ## 000001BE
/* 00EF8 80B97A98 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 00EFC 80B97A9C 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 00F00 80B97AA0 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 00F04 80B97AA4 030C4023 */  subu    $t0, $t8, $t4              
/* 00F08 80B97AA8 A7A80064 */  sh      $t0, 0x0064($sp)           
/* 00F0C 80B97AAC 0C0345A5 */  jal     func_800D1694              
/* 00F10 80B97AB0 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 00F14 80B97AB4 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 00F18 80B97AB8 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 00F1C 80B97ABC 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 00F20 80B97AC0 0C0342A3 */  jal     Matrix_Scale              
/* 00F24 80B97AC4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F28 80B97AC8 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00F2C 80B97ACC 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00F30 80B97AD0 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00F34 80B97AD4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00F38 80B97AD8 AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 00F3C 80B97ADC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00F40 80B97AE0 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 00F44 80B97AE4 3C0580BA */  lui     $a1, %hi(D_80B98050)       ## $a1 = 80BA0000
/* 00F48 80B97AE8 24A58050 */  addiu   $a1, $a1, %lo(D_80B98050)  ## $a1 = 80B98050
/* 00F4C 80B97AEC 24060369 */  addiu   $a2, $zero, 0x0369         ## $a2 = 00000369
/* 00F50 80B97AF0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00F54 80B97AF4 0C0346A2 */  jal     Matrix_NewMtx              
/* 00F58 80B97AF8 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00F5C 80B97AFC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00F60 80B97B00 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 00F64 80B97B04 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00F68 80B97B08 25AD0408 */  addiu   $t5, $t5, 0x0408           ## $t5 = 06000408
/* 00F6C 80B97B0C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00F70 80B97B10 AE2A02C0 */  sw      $t2, 0x02C0($s1)           ## 000002C0
/* 00F74 80B97B14 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00F78 80B97B18 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00F7C 80B97B1C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00F80 80B97B20 8FAE007C */  lw      $t6, 0x007C($sp)           
/* 00F84 80B97B24 3C0680BA */  lui     $a2, %hi(D_80B98068)       ## $a2 = 80BA0000
/* 00F88 80B97B28 24C68068 */  addiu   $a2, $a2, %lo(D_80B98068)  ## $a2 = 80B98068
/* 00F8C 80B97B2C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFD4
/* 00F90 80B97B30 2407036E */  addiu   $a3, $zero, 0x036E         ## $a3 = 0000036E
/* 00F94 80B97B34 0C031AD5 */  jal     Graph_CloseDisps              
/* 00F98 80B97B38 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00F9C 80B97B3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FA0 80B97B40 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00FA4 80B97B44 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00FA8 80B97B48 03E00008 */  jr      $ra                        
/* 00FAC 80B97B4C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
