.rdata
glabel D_80B5A8CC
    .asciz "[31m En_Oa3 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel func_80B59B6C
/* 067BC 80B59B6C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 067C0 80B59B70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 067C4 80B59B74 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 067C8 80B59B78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 067CC 80B59B7C AFB30020 */  sw      $s3, 0x0020($sp)           
/* 067D0 80B59B80 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 067D4 80B59B84 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 067D8 80B59B88 0C2D5375 */  jal     func_80B54DD4              
/* 067DC 80B59B8C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 067E0 80B59B90 3C030601 */  lui     $v1, 0x0601                ## $v1 = 06010000
/* 067E4 80B59B94 246391D8 */  addiu   $v1, $v1, 0x91D8           ## $v1 = 060091D8
/* 067E8 80B59B98 00037100 */  sll     $t6, $v1,  4               
/* 067EC 80B59B9C 3C118016 */  lui     $s1, 0x8016                ## $s1 = 80160000
/* 067F0 80B59BA0 000E7F02 */  srl     $t7, $t6, 28               
/* 067F4 80B59BA4 26316FA8 */  addiu   $s1, $s1, 0x6FA8           ## $s1 = 80166FA8
/* 067F8 80B59BA8 000FC080 */  sll     $t8, $t7,  2               
/* 067FC 80B59BAC 0238C821 */  addu    $t9, $s1, $t8              
/* 06800 80B59BB0 8F280000 */  lw      $t0, 0x0000($t9)           ## 00000000
/* 06804 80B59BB4 3C1200FF */  lui     $s2, 0x00FF                ## $s2 = 00FF0000
/* 06808 80B59BB8 3652FFFF */  ori     $s2, $s2, 0xFFFF           ## $s2 = 00FFFFFF
/* 0680C 80B59BBC 00724824 */  and     $t1, $v1, $s2              
/* 06810 80B59BC0 3C138000 */  lui     $s3, 0x8000                ## $s3 = 80000000
/* 06814 80B59BC4 01095021 */  addu    $t2, $t0, $t1              
/* 06818 80B59BC8 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 0681C 80B59BCC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06820 80B59BD0 01532021 */  addu    $a0, $t2, $s3              
/* 06824 80B59BD4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 06828 80B59BD8 3C030601 */  lui     $v1, 0x0601                ## $v1 = 06010000
/* 0682C 80B59BDC 2463A598 */  addiu   $v1, $v1, 0xA598           ## $v1 = 0600A598
/* 06830 80B59BE0 468021A0 */  cvt.s.w $f6, $f4                   
/* 06834 80B59BE4 00035900 */  sll     $t3, $v1,  4               
/* 06838 80B59BE8 000B6702 */  srl     $t4, $t3, 28               
/* 0683C 80B59BEC 000C6880 */  sll     $t5, $t4,  2               
/* 06840 80B59BF0 022D7021 */  addu    $t6, $s1, $t5              
/* 06844 80B59BF4 0072C024 */  and     $t8, $v1, $s2              
/* 06848 80B59BF8 E60603DC */  swc1    $f6, 0x03DC($s0)           ## 000003DC
/* 0684C 80B59BFC 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 06850 80B59C00 01F8C821 */  addu    $t9, $t7, $t8              
/* 06854 80B59C04 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06858 80B59C08 03332021 */  addu    $a0, $t9, $s3              
/* 0685C 80B59C0C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 06860 80B59C10 3C030601 */  lui     $v1, 0x0601                ## $v1 = 06010000
/* 06864 80B59C14 2463A334 */  addiu   $v1, $v1, 0xA334           ## $v1 = 0600A334
/* 06868 80B59C18 468042A0 */  cvt.s.w $f10, $f8                  
/* 0686C 80B59C1C 00034100 */  sll     $t0, $v1,  4               
/* 06870 80B59C20 00084F02 */  srl     $t1, $t0, 28               
/* 06874 80B59C24 00095080 */  sll     $t2, $t1,  2               
/* 06878 80B59C28 022A5821 */  addu    $t3, $s1, $t2              
/* 0687C 80B59C2C 00726824 */  and     $t5, $v1, $s2              
/* 06880 80B59C30 E60A03E0 */  swc1    $f10, 0x03E0($s0)          ## 000003E0
/* 06884 80B59C34 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 06888 80B59C38 018D7021 */  addu    $t6, $t4, $t5              
/* 0688C 80B59C3C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06890 80B59C40 01D32021 */  addu    $a0, $t6, $s3              
/* 06894 80B59C44 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 06898 80B59C48 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 0689C 80B59C4C 24631110 */  addiu   $v1, $v1, 0x1110           ## $v1 = 06001110
/* 068A0 80B59C50 468084A0 */  cvt.s.w $f18, $f16                 
/* 068A4 80B59C54 00037900 */  sll     $t7, $v1,  4               
/* 068A8 80B59C58 000FC702 */  srl     $t8, $t7, 28               
/* 068AC 80B59C5C 0018C880 */  sll     $t9, $t8,  2               
/* 068B0 80B59C60 02394021 */  addu    $t0, $s1, $t9              
/* 068B4 80B59C64 00725024 */  and     $t2, $v1, $s2              
/* 068B8 80B59C68 E61203E4 */  swc1    $f18, 0x03E4($s0)          ## 000003E4
/* 068BC 80B59C6C 8D090000 */  lw      $t1, 0x0000($t0)           ## 00000000
/* 068C0 80B59C70 012A5821 */  addu    $t3, $t1, $t2              
/* 068C4 80B59C74 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 068C8 80B59C78 01732021 */  addu    $a0, $t3, $s3              
/* 068CC 80B59C7C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 068D0 80B59C80 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 068D4 80B59C84 24632348 */  addiu   $v1, $v1, 0x2348           ## $v1 = 06002348
/* 068D8 80B59C88 468021A0 */  cvt.s.w $f6, $f4                   
/* 068DC 80B59C8C 00036100 */  sll     $t4, $v1,  4               
/* 068E0 80B59C90 000C6F02 */  srl     $t5, $t4, 28               
/* 068E4 80B59C94 000D7080 */  sll     $t6, $t5,  2               
/* 068E8 80B59C98 022E7821 */  addu    $t7, $s1, $t6              
/* 068EC 80B59C9C 0072C824 */  and     $t9, $v1, $s2              
/* 068F0 80B59CA0 E60603F4 */  swc1    $f6, 0x03F4($s0)           ## 000003F4
/* 068F4 80B59CA4 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 068F8 80B59CA8 03194021 */  addu    $t0, $t8, $t9              
/* 068FC 80B59CAC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06900 80B59CB0 01132021 */  addu    $a0, $t0, $s3              
/* 06904 80B59CB4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 06908 80B59CB8 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 0690C 80B59CBC 24632E54 */  addiu   $v1, $v1, 0x2E54           ## $v1 = 06002E54
/* 06910 80B59CC0 468042A0 */  cvt.s.w $f10, $f8                  
/* 06914 80B59CC4 00034900 */  sll     $t1, $v1,  4               
/* 06918 80B59CC8 00095702 */  srl     $t2, $t1, 28               
/* 0691C 80B59CCC 000A5880 */  sll     $t3, $t2,  2               
/* 06920 80B59CD0 022B6021 */  addu    $t4, $s1, $t3              
/* 06924 80B59CD4 00727024 */  and     $t6, $v1, $s2              
/* 06928 80B59CD8 E60A03EC */  swc1    $f10, 0x03EC($s0)          ## 000003EC
/* 0692C 80B59CDC 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 06930 80B59CE0 01AE7821 */  addu    $t7, $t5, $t6              
/* 06934 80B59CE4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06938 80B59CE8 01F32021 */  addu    $a0, $t7, $s3              
/* 0693C 80B59CEC 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 06940 80B59CF0 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 06944 80B59CF4 24631D8C */  addiu   $v1, $v1, 0x1D8C           ## $v1 = 06001D8C
/* 06948 80B59CF8 468084A0 */  cvt.s.w $f18, $f16                 
/* 0694C 80B59CFC 0003C100 */  sll     $t8, $v1,  4               
/* 06950 80B59D00 0018CF02 */  srl     $t9, $t8, 28               
/* 06954 80B59D04 00194080 */  sll     $t0, $t9,  2               
/* 06958 80B59D08 02284821 */  addu    $t1, $s1, $t0              
/* 0695C 80B59D0C 00725824 */  and     $t3, $v1, $s2              
/* 06960 80B59D10 E61203F0 */  swc1    $f18, 0x03F0($s0)          ## 000003F0
/* 06964 80B59D14 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 06968 80B59D18 014B6021 */  addu    $t4, $t2, $t3              
/* 0696C 80B59D1C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06970 80B59D20 01932021 */  addu    $a0, $t4, $s3              
/* 06974 80B59D24 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 06978 80B59D28 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0697C 80B59D2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06980 80B59D30 468021A0 */  cvt.s.w $f6, $f4                   
/* 06984 80B59D34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06988 80B59D38 10600008 */  beq     $v1, $zero, .L80B59D5C     
/* 0698C 80B59D3C E60603E8 */  swc1    $f6, 0x03E8($s0)           ## 000003E8
/* 06990 80B59D40 1061000A */  beq     $v1, $at, .L80B59D6C       
/* 06994 80B59D44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06998 80B59D48 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0699C 80B59D4C 1061000B */  beq     $v1, $at, .L80B59D7C       
/* 069A0 80B59D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 069A4 80B59D54 1000000D */  beq     $zero, $zero, .L80B59D8C   
/* 069A8 80B59D58 3C0480B6 */  lui     $a0, %hi(D_80B5A8CC)       ## $a0 = 80B60000
.L80B59D5C:
/* 069AC 80B59D5C 0C2D53ED */  jal     func_80B54FB4              
/* 069B0 80B59D60 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 069B4 80B59D64 1000000E */  beq     $zero, $zero, .L80B59DA0   
/* 069B8 80B59D68 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B59D6C:
/* 069BC 80B59D6C 0C2D55E0 */  jal     func_80B55780              
/* 069C0 80B59D70 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 069C4 80B59D74 1000000A */  beq     $zero, $zero, .L80B59DA0   
/* 069C8 80B59D78 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B59D7C:
/* 069CC 80B59D7C 0C2D660A */  jal     func_80B59828              
/* 069D0 80B59D80 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 069D4 80B59D84 10000006 */  beq     $zero, $zero, .L80B59DA0   
/* 069D8 80B59D88 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B59D8C:
/* 069DC 80B59D8C 0C00084C */  jal     osSyncPrintf
              
/* 069E0 80B59D90 2484A8CC */  addiu   $a0, $a0, %lo(D_80B5A8CC)  ## $a0 = FFFFA8CC
/* 069E4 80B59D94 0C00B55C */  jal     Actor_Kill
              
/* 069E8 80B59D98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 069EC 80B59D9C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B59DA0:
/* 069F0 80B59DA0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 069F4 80B59DA4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 069F8 80B59DA8 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 069FC 80B59DAC 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 06A00 80B59DB0 03E00008 */  jr      $ra                        
/* 06A04 80B59DB4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
