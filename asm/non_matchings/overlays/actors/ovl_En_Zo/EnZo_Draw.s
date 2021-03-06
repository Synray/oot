.rdata
glabel D_80B62674
    .asciz "../z_en_zo.c"
    .balign 4

glabel D_80B62684
    .asciz "../z_en_zo.c"
    .balign 4

.text
glabel EnZo_Draw
/* 02020 80B62240 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 02024 80B62244 3C0F80B6 */  lui     $t7, %hi(D_80B625B0)       ## $t7 = 80B60000
/* 02028 80B62248 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0202C 80B6224C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02030 80B62250 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02034 80B62254 25EF25B0 */  addiu   $t7, $t7, %lo(D_80B625B0)  ## $t7 = 80B625B0
/* 02038 80B62258 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B625B0
/* 0203C 80B6225C 27AE0048 */  addiu   $t6, $sp, 0x0048           ## $t6 = FFFFFFF0
/* 02040 80B62260 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B625B4
/* 02044 80B62264 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 02048 80B62268 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B625B8
/* 0204C 80B6226C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02050 80B62270 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02054 80B62274 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 02058 80B62278 0C034213 */  jal     Matrix_Push              
/* 0205C 80B6227C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 02060 80B62280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02064 80B62284 0C2D821D */  jal     func_80B60874              
/* 02068 80B62288 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0206C 80B6228C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02070 80B62290 0C2D8298 */  jal     func_80B60A60              
/* 02074 80B62294 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02078 80B62298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0207C 80B6229C 0C2D8311 */  jal     func_80B60C44              
/* 02080 80B622A0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02084 80B622A4 0C034221 */  jal     Matrix_Pull              
/* 02088 80B622A8 00000000 */  nop
/* 0208C 80B622AC C6040648 */  lwc1    $f4, 0x0648($s0)           ## 00000648
/* 02090 80B622B0 3C0680B6 */  lui     $a2, %hi(D_80B62674)       ## $a2 = 80B60000
/* 02094 80B622B4 24C62674 */  addiu   $a2, $a2, %lo(D_80B62674)  ## $a2 = 80B62674
/* 02098 80B622B8 4600218D */  trunc.w.s $f6, $f4                   
/* 0209C 80B622BC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFDC
/* 020A0 80B622C0 440A3000 */  mfc1    $t2, $f6                   
/* 020A4 80B622C4 00000000 */  nop
/* 020A8 80B622C8 5140005C */  beql    $t2, $zero, .L80B6243C     
/* 020AC 80B622CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 020B0 80B622D0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 020B4 80B622D4 240703F0 */  addiu   $a3, $zero, 0x03F0         ## $a3 = 000003F0
/* 020B8 80B622D8 0C031AB1 */  jal     Graph_OpenDisps              
/* 020BC 80B622DC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 020C0 80B622E0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 020C4 80B622E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 255.00
/* 020C8 80B622E8 C60A0648 */  lwc1    $f10, 0x0648($s0)          ## 00000648
/* 020CC 80B622EC 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 020D0 80B622F0 460A4032 */  c.eq.s  $f8, $f10                  
/* 020D4 80B622F4 00000000 */  nop
/* 020D8 80B622F8 45020027 */  bc1fl   .L80B62398                 
/* 020DC 80B622FC 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 020E0 80B62300 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 020E4 80B62304 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 020E8 80B62308 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 020EC 80B6230C 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 020F0 80B62310 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 020F4 80B62314 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 020F8 80B62318 860D0654 */  lh      $t5, 0x0654($s0)           ## 00000654
/* 020FC 80B6231C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 02100 80B62320 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02104 80B62324 000D7080 */  sll     $t6, $t5,  2               
/* 02108 80B62328 03AE2021 */  addu    $a0, $sp, $t6              
/* 0210C 80B6232C 8C840048 */  lw      $a0, 0x0048($a0)           ## 00000048
/* 02110 80B62330 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 02114 80B62334 3C0680B6 */  lui     $a2, %hi(func_80B61FCC)    ## $a2 = 80B60000
/* 02118 80B62338 0004C100 */  sll     $t8, $a0,  4               
/* 0211C 80B6233C 0018CF02 */  srl     $t9, $t8, 28               
/* 02120 80B62340 00194880 */  sll     $t1, $t9,  2               
/* 02124 80B62344 01495021 */  addu    $t2, $t2, $t1              
/* 02128 80B62348 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 0212C 80B6234C 00817824 */  and     $t7, $a0, $at              
/* 02130 80B62350 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02134 80B62354 01EA5821 */  addu    $t3, $t7, $t2              
/* 02138 80B62358 01616021 */  addu    $t4, $t3, $at              
/* 0213C 80B6235C AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 02140 80B62360 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 02144 80B62364 C6100648 */  lwc1    $f16, 0x0648($s0)          ## 00000648
/* 02148 80B62368 3C0780B6 */  lui     $a3, %hi(func_80B621E4)    ## $a3 = 80B60000
/* 0214C 80B6236C 24E721E4 */  addiu   $a3, $a3, %lo(func_80B621E4) ## $a3 = 80B621E4
/* 02150 80B62370 4600848D */  trunc.w.s $f18, $f16                 
/* 02154 80B62374 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02158 80B62378 24C61FCC */  addiu   $a2, $a2, %lo(func_80B61FCC) ## $a2 = 80B61FCC
/* 0215C 80B6237C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 02160 80B62380 440E9000 */  mfc1    $t6, $f18                  
/* 02164 80B62384 0C00D2E8 */  jal     func_80034BA0              
/* 02168 80B62388 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0216C 80B6238C 10000024 */  beq     $zero, $zero, .L80B62420   
/* 02170 80B62390 00000000 */  nop
/* 02174 80B62394 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
.L80B62398:
/* 02178 80B62398 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0217C 80B6239C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 02180 80B623A0 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 02184 80B623A4 AD1802D0 */  sw      $t8, 0x02D0($t0)           ## 000002D0
/* 02188 80B623A8 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0218C 80B623AC 86090654 */  lh      $t1, 0x0654($s0)           ## 00000654
/* 02190 80B623B0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 02194 80B623B4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02198 80B623B8 00097880 */  sll     $t7, $t1,  2               
/* 0219C 80B623BC 03AF2021 */  addu    $a0, $sp, $t7              
/* 021A0 80B623C0 8C840048 */  lw      $a0, 0x0048($a0)           ## 00000048
/* 021A4 80B623C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 021A8 80B623C8 3C0680B6 */  lui     $a2, %hi(func_80B61FCC)    ## $a2 = 80B60000
/* 021AC 80B623CC 00045900 */  sll     $t3, $a0,  4               
/* 021B0 80B623D0 000B6702 */  srl     $t4, $t3, 28               
/* 021B4 80B623D4 000C6880 */  sll     $t5, $t4,  2               
/* 021B8 80B623D8 01CD7021 */  addu    $t6, $t6, $t5              
/* 021BC 80B623DC 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 021C0 80B623E0 00815024 */  and     $t2, $a0, $at              
/* 021C4 80B623E4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 021C8 80B623E8 014EC021 */  addu    $t8, $t2, $t6              
/* 021CC 80B623EC 0301C821 */  addu    $t9, $t8, $at              
/* 021D0 80B623F0 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 021D4 80B623F4 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 021D8 80B623F8 C6040648 */  lwc1    $f4, 0x0648($s0)           ## 00000648
/* 021DC 80B623FC 3C0780B6 */  lui     $a3, %hi(func_80B621E4)    ## $a3 = 80B60000
/* 021E0 80B62400 24E721E4 */  addiu   $a3, $a3, %lo(func_80B621E4) ## $a3 = 80B621E4
/* 021E4 80B62404 4600218D */  trunc.w.s $f6, $f4                   
/* 021E8 80B62408 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021EC 80B6240C 24C61FCC */  addiu   $a2, $a2, %lo(func_80B61FCC) ## $a2 = 80B61FCC
/* 021F0 80B62410 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 021F4 80B62414 440F3000 */  mfc1    $t7, $f6                   
/* 021F8 80B62418 0C00D331 */  jal     func_80034CC4              
/* 021FC 80B6241C AFAF0014 */  sw      $t7, 0x0014($sp)           
.L80B62420:
/* 02200 80B62420 3C0680B6 */  lui     $a2, %hi(D_80B62684)       ## $a2 = 80B60000
/* 02204 80B62424 24C62684 */  addiu   $a2, $a2, %lo(D_80B62684)  ## $a2 = 80B62684
/* 02208 80B62428 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFDC
/* 0220C 80B6242C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02210 80B62430 0C031AD5 */  jal     Graph_CloseDisps              
/* 02214 80B62434 24070401 */  addiu   $a3, $zero, 0x0401         ## $a3 = 00000401
/* 02218 80B62438 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B6243C:
/* 0221C 80B6243C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02220 80B62440 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02224 80B62444 03E00008 */  jr      $ra                        
/* 02228 80B62448 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 0222C 80B6244C 00000000 */  nop
