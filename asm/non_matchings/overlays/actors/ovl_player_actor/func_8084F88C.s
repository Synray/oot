glabel func_8084F88C
/* 1D67C 8084F88C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1D680 8084F890 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1D684 8084F894 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 1D688 8084F898 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1D68C 8084F89C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1D690 8084F8A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1D694 8084F8A4 24C501B4 */  addiu   $a1, $a2, 0x01B4           ## $a1 = 000001B4
/* 1D698 8084F8A8 0C028EF0 */  jal     func_800A3BC0              
/* 1D69C 8084F8AC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1D6A0 8084F8B0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1D6A4 8084F8B4 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 1D6A8 8084F8B8 01F07821 */  addu    $t7, $t7, $s0              
/* 1D6AC 8084F8BC 84C20850 */  lh      $v0, 0x0850($a2)           ## 00000850
/* 1D6B0 8084F8C0 28430009 */  slti    $v1, $v0, 0x0009           
/* 1D6B4 8084F8C4 38630001 */  xori    $v1, $v1, 0x0001           ## $v1 = 00000001
/* 1D6B8 8084F8C8 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 1D6BC 8084F8CC 1060002F */  beq     $v1, $zero, .L8084F98C     
/* 1D6C0 8084F8D0 A4CE0850 */  sh      $t6, 0x0850($a2)           ## 00000850
/* 1D6C4 8084F8D4 81EF1E15 */  lb      $t7, 0x1E15($t7)           ## 00011E15
/* 1D6C8 8084F8D8 55E0002D */  bnel    $t7, $zero, .L8084F990     
/* 1D6CC 8084F8DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1D6D0 8084F8E0 80C2084F */  lb      $v0, 0x084F($a2)           ## 0000084F
/* 1D6D4 8084F8E4 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 1D6D8 8084F8E8 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
/* 1D6DC 8084F8EC 1040001C */  beq     $v0, $zero, .L8084F960     
/* 1D6E0 8084F8F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1D6E4 8084F8F4 861800A4 */  lh      $t8, 0x00A4($s0)           ## 000000A4
/* 1D6E8 8084F8F8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 1D6EC 8084F8FC 17010008 */  bne     $t8, $at, .L8084F920       
/* 1D6F0 8084F900 00000000 */  nop
/* 1D6F4 8084F904 0C030322 */  jal     Gameplay_TriggerRespawn              
/* 1D6F8 8084F908 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D6FC 8084F90C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1D700 8084F910 00300821 */  addu    $at, $at, $s0              
/* 1D704 8084F914 24190088 */  addiu   $t9, $zero, 0x0088         ## $t9 = 00000088
/* 1D708 8084F918 10000009 */  beq     $zero, $zero, .L8084F940   
/* 1D70C 8084F91C A4391E1A */  sh      $t9, 0x1E1A($at)           ## 00011E1A
.L8084F920:
/* 1D710 8084F920 04410005 */  bgez    $v0, .L8084F938            
/* 1D714 8084F924 00000000 */  nop
/* 1D718 8084F928 0C030322 */  jal     Gameplay_TriggerRespawn              
/* 1D71C 8084F92C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D720 8084F930 10000004 */  beq     $zero, $zero, .L8084F944   
/* 1D724 8084F934 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8084F938:
/* 1D728 8084F938 0C0302D8 */  jal     Gameplay_TriggerVoidOut              
/* 1D72C 8084F93C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084F940:
/* 1D730 8084F940 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8084F944:
/* 1D734 8084F944 00300821 */  addu    $at, $at, $s0              
/* 1D738 8084F948 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 1D73C 8084F94C A0281E5E */  sb      $t0, 0x1E5E($at)           ## 00011E5E
/* 1D740 8084F950 0C01E221 */  jal     func_80078884              
/* 1D744 8084F954 24045801 */  addiu   $a0, $zero, 0x5801         ## $a0 = 00005801
/* 1D748 8084F958 10000009 */  beq     $zero, $zero, .L8084F980   
/* 1D74C 8084F95C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8084F960:
/* 1D750 8084F960 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 1D754 8084F964 00300821 */  addu    $at, $at, $s0              
/* 1D758 8084F968 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 1D75C 8084F96C A0231E5E */  sb      $v1, 0x1E5E($at)           ## 00011E5E
/* 1D760 8084F970 A043141D */  sb      $v1, 0x141D($v0)           ## 8015FA7D
/* 1D764 8084F974 A04413E0 */  sb      $a0, 0x13E0($v0)           ## 8015FA40
/* 1D768 8084F978 A04413E1 */  sb      $a0, 0x13E1($v0)           ## 8015FA41
/* 1D76C 8084F97C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8084F980:
/* 1D770 8084F980 00300821 */  addu    $at, $at, $s0              
/* 1D774 8084F984 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 1D778 8084F988 A0291E15 */  sb      $t1, 0x1E15($at)           ## 00011E15
.L8084F98C:
/* 1D77C 8084F98C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084F990:
/* 1D780 8084F990 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1D784 8084F994 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1D788 8084F998 03E00008 */  jr      $ra                        
/* 1D78C 8084F99C 00000000 */  nop
