glabel func_80809038
/* 052F8 80809038 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 052FC 8080903C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05300 80809040 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05304 80809044 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 05308 80809048 00240821 */  addu    $at, $at, $a0              
/* 0530C 8080904C 240E0063 */  addiu   $t6, $zero, 0x0063         ## $t6 = 00000063
/* 05310 80809050 A42ECAC8 */  sh      $t6, -0x3538($at)          ## 0001CAC8
/* 05314 80809054 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 05318 80809058 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 0531C 8080905C 00811821 */  addu    $v1, $a0, $at              
/* 05320 80809060 846F4AD2 */  lh      $t7, 0x4AD2($v1)           ## 00004AD2
/* 05324 80809064 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 05328 80809068 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0532C 8080906C 51E10058 */  beql    $t7, $at, .L808091D0       
/* 05330 80809070 84624ABA */  lh      $v0, 0x4ABA($v1)           ## 00004ABA
/* 05334 80809074 84624ABA */  lh      $v0, 0x4ABA($v1)           ## 00004ABA
/* 05338 80809078 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 0533C 8080907C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 05340 80809080 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 05344 80809084 10200027 */  beq     $at, $zero, .L80809124     
/* 05348 80809088 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 0534C 8080908C 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 05350 80809090 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 05354 80809094 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05358 80809098 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 0535C 8080909C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 05360 808090A0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05364 808090A4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 05368 808090A8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0536C 808090AC AFA3002C */  sw      $v1, 0x002C($sp)           
/* 05370 808090B0 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 05374 808090B4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05378 808090B8 00300821 */  addu    $at, $at, $s0              
/* 0537C 808090BC 84794ACE */  lh      $t9, 0x4ACE($v1)           ## 00004ACE
/* 05380 808090C0 240C000C */  addiu   $t4, $zero, 0x000C         ## $t4 = 0000000C
/* 05384 808090C4 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 05388 808090C8 A428CACE */  sh      $t0, -0x3532($at)          ## 0001CACE
/* 0538C 808090CC 84694AD0 */  lh      $t1, 0x4AD0($v1)           ## 00004AD0
/* 05390 808090D0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05394 808090D4 00300821 */  addu    $at, $at, $s0              
/* 05398 808090D8 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 0539C 808090DC A42ACAD0 */  sh      $t2, -0x3530($at)          ## 0001CAD0
/* 053A0 808090E0 846B4AD0 */  lh      $t3, 0x4AD0($v1)           ## 00004AD0
/* 053A4 808090E4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 053A8 808090E8 00300821 */  addu    $at, $at, $s0              
/* 053AC 808090EC 05630070 */  bgezl   $t3, .L808092B0            
/* 053B0 808090F0 84624ABC */  lh      $v0, 0x4ABC($v1)           ## 00004ABC
/* 053B4 808090F4 A42CCAD0 */  sh      $t4, -0x3530($at)          ## 0001CAD0
/* 053B8 808090F8 846D4AD2 */  lh      $t5, 0x4AD2($v1)           ## 00004AD2
/* 053BC 808090FC 846F4AD0 */  lh      $t7, 0x4AD0($v1)           ## 00004AD0
/* 053C0 80809100 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 053C4 80809104 000D7080 */  sll     $t6, $t5,  2               
/* 053C8 80809108 01CD7023 */  subu    $t6, $t6, $t5              
/* 053CC 8080910C 000E7080 */  sll     $t6, $t6,  2               
/* 053D0 80809110 01CD7021 */  addu    $t6, $t6, $t5              
/* 053D4 80809114 00300821 */  addu    $at, $at, $s0              
/* 053D8 80809118 01CFC021 */  addu    $t8, $t6, $t7              
/* 053DC 8080911C 10000063 */  beq     $zero, $zero, .L808092AC   
/* 053E0 80809120 A438CACE */  sh      $t8, -0x3532($at)          ## 0001CACE
.L80809124:
/* 053E4 80809124 2841001F */  slti    $at, $v0, 0x001F           
/* 053E8 80809128 14200060 */  bne     $at, $zero, .L808092AC     
/* 053EC 8080912C 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 053F0 80809130 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 053F4 80809134 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 053F8 80809138 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 053FC 8080913C 272733E0 */  addiu   $a3, $t9, 0x33E0           ## $a3 = 801333E0
/* 05400 80809140 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05404 80809144 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 05408 80809148 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0540C 8080914C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 05410 80809150 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05414 80809154 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 05418 80809158 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 0541C 8080915C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 05420 80809160 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05424 80809164 00300821 */  addu    $at, $at, $s0              
/* 05428 80809168 84694ACE */  lh      $t1, 0x4ACE($v1)           ## 00004ACE
/* 0542C 8080916C 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 05430 80809170 A42ACACE */  sh      $t2, -0x3532($at)          ## 0001CACE
/* 05434 80809174 846B4AD0 */  lh      $t3, 0x4AD0($v1)           ## 00004AD0
/* 05438 80809178 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0543C 8080917C 00300821 */  addu    $at, $at, $s0              
/* 05440 80809180 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 05444 80809184 A42CCAD0 */  sh      $t4, -0x3530($at)          ## 0001CAD0
/* 05448 80809188 846D4AD0 */  lh      $t5, 0x4AD0($v1)           ## 00004AD0
/* 0544C 8080918C 29A1000D */  slti    $at, $t5, 0x000D           
/* 05450 80809190 14200046 */  bne     $at, $zero, .L808092AC     
/* 05454 80809194 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05458 80809198 00300821 */  addu    $at, $at, $s0              
/* 0545C 8080919C A420CAD0 */  sh      $zero, -0x3530($at)        ## 0001CAD0
/* 05460 808091A0 846E4AD2 */  lh      $t6, 0x4AD2($v1)           ## 00004AD2
/* 05464 808091A4 84784AD0 */  lh      $t8, 0x4AD0($v1)           ## 00004AD0
/* 05468 808091A8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0546C 808091AC 000E7880 */  sll     $t7, $t6,  2               
/* 05470 808091B0 01EE7823 */  subu    $t7, $t7, $t6              
/* 05474 808091B4 000F7880 */  sll     $t7, $t7,  2               
/* 05478 808091B8 01EE7821 */  addu    $t7, $t7, $t6              
/* 0547C 808091BC 00300821 */  addu    $at, $at, $s0              
/* 05480 808091C0 01F8C821 */  addu    $t9, $t7, $t8              
/* 05484 808091C4 10000039 */  beq     $zero, $zero, .L808092AC   
/* 05488 808091C8 A439CACE */  sh      $t9, -0x3532($at)          ## 0001CACE
/* 0548C 808091CC 84624ABA */  lh      $v0, 0x4ABA($v1)           ## 00004ABA
.L808091D0:
/* 05490 808091D0 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05494 808091D4 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 05498 808091D8 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 0549C 808091DC 10200018 */  beq     $at, $zero, .L80809240     
/* 054A0 808091E0 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 054A4 808091E4 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 054A8 808091E8 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 054AC 808091EC 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 054B0 808091F0 250733E0 */  addiu   $a3, $t0, 0x33E0           ## $a3 = 801333E0
/* 054B4 808091F4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 054B8 808091F8 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 054BC 808091FC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 054C0 80809200 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 054C4 80809204 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 054C8 80809208 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 054CC 8080920C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 054D0 80809210 00300821 */  addu    $at, $at, $s0              
/* 054D4 80809214 846A4AD0 */  lh      $t2, 0x4AD0($v1)           ## 00004AD0
/* 054D8 80809218 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 054DC 8080921C 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 054E0 80809220 A42BCAD0 */  sh      $t3, -0x3530($at)          ## 0001CAD0
/* 054E4 80809224 846C4AD0 */  lh      $t4, 0x4AD0($v1)           ## 00004AD0
/* 054E8 80809228 29810003 */  slti    $at, $t4, 0x0003           
/* 054EC 8080922C 1020001F */  beq     $at, $zero, .L808092AC     
/* 054F0 80809230 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 054F4 80809234 00300821 */  addu    $at, $at, $s0              
/* 054F8 80809238 1000001C */  beq     $zero, $zero, .L808092AC   
/* 054FC 8080923C A42DCAD0 */  sh      $t5, -0x3530($at)          ## 0001CAD0
.L80809240:
/* 05500 80809240 2841001F */  slti    $at, $v0, 0x001F           
/* 05504 80809244 14200019 */  bne     $at, $zero, .L808092AC     
/* 05508 80809248 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 0550C 8080924C 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 05510 80809250 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 05514 80809254 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 05518 80809258 25C733E0 */  addiu   $a3, $t6, 0x33E0           ## $a3 = 801333E0
/* 0551C 8080925C 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05520 80809260 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 05524 80809264 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 05528 80809268 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0552C 8080926C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05530 80809270 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 05534 80809274 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 05538 80809278 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0553C 8080927C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05540 80809280 00300821 */  addu    $at, $at, $s0              
/* 05544 80809284 84784AD0 */  lh      $t8, 0x4AD0($v1)           ## 00004AD0
/* 05548 80809288 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 0554C 8080928C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 05550 80809290 A439CAD0 */  sh      $t9, -0x3530($at)          ## 0001CAD0
/* 05554 80809294 84684AD0 */  lh      $t0, 0x4AD0($v1)           ## 00004AD0
/* 05558 80809298 29010005 */  slti    $at, $t0, 0x0005           
/* 0555C 8080929C 14200003 */  bne     $at, $zero, .L808092AC     
/* 05560 808092A0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05564 808092A4 00300821 */  addu    $at, $at, $s0              
/* 05568 808092A8 A429CAD0 */  sh      $t1, -0x3530($at)          ## 0001CAD0
.L808092AC:
/* 0556C 808092AC 84624ABC */  lh      $v0, 0x4ABC($v1)           ## 00004ABC
.L808092B0:
/* 05570 808092B0 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 05574 808092B4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 05578 808092B8 2841001F */  slti    $at, $v0, 0x001F           
/* 0557C 808092BC 1420005D */  bne     $at, $zero, .L80809434     
/* 05580 808092C0 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 05584 808092C4 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 05588 808092C8 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 0558C 808092CC 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05590 808092D0 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 05594 808092D4 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 05598 808092D8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0559C 808092DC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 055A0 808092E0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 055A4 808092E4 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 055A8 808092E8 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 055AC 808092EC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 055B0 808092F0 00300821 */  addu    $at, $at, $s0              
/* 055B4 808092F4 846B4AD2 */  lh      $t3, 0x4AD2($v1)           ## 00004AD2
/* 055B8 808092F8 256CFFFF */  addiu   $t4, $t3, 0xFFFF           ## $t4 = FFFFFFFF
/* 055BC 808092FC A42CCAD2 */  sh      $t4, -0x352E($at)          ## 0001CAD2
/* 055C0 80809300 846D4AD2 */  lh      $t5, 0x4AD2($v1)           ## 00004AD2
/* 055C4 80809304 05A30030 */  bgezl   $t5, .L808093C8            
/* 055C8 80809308 846F4ACE */  lh      $t7, 0x4ACE($v1)           ## 00004ACE
/* 055CC 8080930C 846E4AD0 */  lh      $t6, 0x4AD0($v1)           ## 00004AD0
/* 055D0 80809310 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 055D4 80809314 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 055D8 80809318 29C10008 */  slti    $at, $t6, 0x0008           
/* 055DC 8080931C 10200009 */  beq     $at, $zero, .L80809344     
/* 055E0 80809320 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 055E4 80809324 00300821 */  addu    $at, $at, $s0              
/* 055E8 80809328 A42FCAD2 */  sh      $t7, -0x352E($at)          ## 0001CAD2
/* 055EC 8080932C 84784AD0 */  lh      $t8, 0x4AD0($v1)           ## 00004AD0
/* 055F0 80809330 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 055F4 80809334 00300821 */  addu    $at, $at, $s0              
/* 055F8 80809338 27190034 */  addiu   $t9, $t8, 0x0034           ## $t9 = 00000034
/* 055FC 8080933C 100000A6 */  beq     $zero, $zero, .L808095D8   
/* 05600 80809340 A439CACE */  sh      $t9, -0x3532($at)          ## 0001CACE
.L80809344:
/* 05604 80809344 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05608 80809348 00300821 */  addu    $at, $at, $s0              
/* 0560C 8080934C A428CAD2 */  sh      $t0, -0x352E($at)          ## 0001CAD2
/* 05610 80809350 84694ACE */  lh      $t1, 0x4ACE($v1)           ## 00004ACE
/* 05614 80809354 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05618 80809358 00300821 */  addu    $at, $at, $s0              
/* 0561C 8080935C 252A0034 */  addiu   $t2, $t1, 0x0034           ## $t2 = 00000034
/* 05620 80809360 A42ACACE */  sh      $t2, -0x3532($at)          ## 0001CACE
/* 05624 80809364 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
/* 05628 80809368 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 0562C 8080936C 00022400 */  sll     $a0, $v0, 16               
/* 05630 80809370 2841000A */  slti    $at, $v0, 0x000A           
/* 05634 80809374 10200006 */  beq     $at, $zero, .L80809390     
/* 05638 80809378 00042403 */  sra     $a0, $a0, 16               
/* 0563C 8080937C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05640 80809380 00300821 */  addu    $at, $at, $s0              
/* 05644 80809384 A42BCAD0 */  sh      $t3, -0x3530($at)          ## 0001CAD0
/* 05648 80809388 10000008 */  beq     $zero, $zero, .L808093AC   
/* 0564C 8080938C 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L80809390:
/* 05650 80809390 2841000D */  slti    $at, $v0, 0x000D           
/* 05654 80809394 10200005 */  beq     $at, $zero, .L808093AC     
/* 05658 80809398 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 0565C 8080939C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05660 808093A0 00300821 */  addu    $at, $at, $s0              
/* 05664 808093A4 A42CCAD0 */  sh      $t4, -0x3530($at)          ## 0001CAD0
/* 05668 808093A8 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L808093AC:
/* 0566C 808093AC 00026840 */  sll     $t5, $v0,  1               
/* 05670 808093B0 020D7021 */  addu    $t6, $s0, $t5              
/* 05674 808093B4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05678 808093B8 002E0821 */  addu    $at, $at, $t6              
/* 0567C 808093BC 10000086 */  beq     $zero, $zero, .L808095D8   
/* 05680 808093C0 A424CAD6 */  sh      $a0, -0x352A($at)          ## 0001CAD6
/* 05684 808093C4 846F4ACE */  lh      $t7, 0x4ACE($v1)           ## 00004ACE
.L808093C8:
/* 05688 808093C8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0568C 808093CC 00300821 */  addu    $at, $at, $s0              
/* 05690 808093D0 25F8FFF3 */  addiu   $t8, $t7, 0xFFF3           ## $t8 = FFFFFFF7
/* 05694 808093D4 A438CACE */  sh      $t8, -0x3532($at)          ## 0001CACE
/* 05698 808093D8 84794AD2 */  lh      $t9, 0x4AD2($v1)           ## 00004AD2
/* 0569C 808093DC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 056A0 808093E0 24080034 */  addiu   $t0, $zero, 0x0034         ## $t0 = 00000034
/* 056A4 808093E4 1721007C */  bne     $t9, $at, .L808095D8       
/* 056A8 808093E8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 056AC 808093EC 00300821 */  addu    $at, $at, $s0              
/* 056B0 808093F0 A428CACE */  sh      $t0, -0x3532($at)          ## 0001CACE
/* 056B4 808093F4 84694AD0 */  lh      $t1, 0x4AD0($v1)           ## 00004AD0
/* 056B8 808093F8 3C0C0002 */  lui     $t4, 0x0002                ## $t4 = 00020000
/* 056BC 808093FC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 056C0 80809400 00095040 */  sll     $t2, $t1,  1               
/* 056C4 80809404 020A5821 */  addu    $t3, $s0, $t2              
/* 056C8 80809408 018B6021 */  addu    $t4, $t4, $t3              
/* 056CC 8080940C 858CCAD6 */  lh      $t4, -0x352A($t4)          ## 0001CAD6
/* 056D0 80809410 00300821 */  addu    $at, $at, $s0              
/* 056D4 80809414 A42CCAD0 */  sh      $t4, -0x3530($at)          ## 0001CAD0
/* 056D8 80809418 846E4AD0 */  lh      $t6, 0x4AD0($v1)           ## 00004AD0
/* 056DC 8080941C 846D4ACE */  lh      $t5, 0x4ACE($v1)           ## 00004ACE
/* 056E0 80809420 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 056E4 80809424 00300821 */  addu    $at, $at, $s0              
/* 056E8 80809428 01AE7821 */  addu    $t7, $t5, $t6              
/* 056EC 8080942C 1000006A */  beq     $zero, $zero, .L808095D8   
/* 056F0 80809430 A42FCACE */  sh      $t7, -0x3532($at)          ## 0001CACE
.L80809434:
/* 056F4 80809434 2841FFE2 */  slti    $at, $v0, 0xFFE2           
/* 056F8 80809438 10200067 */  beq     $at, $zero, .L808095D8     
/* 056FC 8080943C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 05700 80809440 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 05704 80809444 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 05708 80809448 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 0570C 8080944C 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 05710 80809450 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 05714 80809454 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 05718 80809458 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0571C 8080945C 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 05720 80809460 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 05724 80809464 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 05728 80809468 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 0572C 8080946C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 05730 80809470 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05734 80809474 00300821 */  addu    $at, $at, $s0              
/* 05738 80809478 84794AD2 */  lh      $t9, 0x4AD2($v1)           ## 00004AD2
/* 0573C 8080947C 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 05740 80809480 A428CAD2 */  sh      $t0, -0x352E($at)          ## 0001CAD2
/* 05744 80809484 84694AD2 */  lh      $t1, 0x4AD2($v1)           ## 00004AD2
/* 05748 80809488 29210006 */  slti    $at, $t1, 0x0006           
/* 0574C 8080948C 14200011 */  bne     $at, $zero, .L808094D4     
/* 05750 80809490 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05754 80809494 00300821 */  addu    $at, $at, $s0              
/* 05758 80809498 A420CAD2 */  sh      $zero, -0x352E($at)        ## 0001CAD2
/* 0575C 8080949C 846A4AD0 */  lh      $t2, 0x4AD0($v1)           ## 00004AD0
/* 05760 808094A0 3C0D0002 */  lui     $t5, 0x0002                ## $t5 = 00020000
/* 05764 808094A4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05768 808094A8 000A5840 */  sll     $t3, $t2,  1               
/* 0576C 808094AC 020B6021 */  addu    $t4, $s0, $t3              
/* 05770 808094B0 01AC6821 */  addu    $t5, $t5, $t4              
/* 05774 808094B4 85ADCAD6 */  lh      $t5, -0x352A($t5)          ## 0001CAD6
/* 05778 808094B8 00300821 */  addu    $at, $at, $s0              
/* 0577C 808094BC A42DCAD0 */  sh      $t5, -0x3530($at)          ## 0001CAD0
/* 05780 808094C0 846E4AD0 */  lh      $t6, 0x4AD0($v1)           ## 00004AD0
/* 05784 808094C4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05788 808094C8 00300821 */  addu    $at, $at, $s0              
/* 0578C 808094CC 10000042 */  beq     $zero, $zero, .L808095D8   
/* 05790 808094D0 A42ECACE */  sh      $t6, -0x3532($at)          ## 0001CACE
.L808094D4:
/* 05794 808094D4 846F4ACE */  lh      $t7, 0x4ACE($v1)           ## 00004ACE
/* 05798 808094D8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0579C 808094DC 00300821 */  addu    $at, $at, $s0              
/* 057A0 808094E0 25F8000D */  addiu   $t8, $t7, 0x000D           ## $t8 = 0000000D
/* 057A4 808094E4 A438CACE */  sh      $t8, -0x3532($at)          ## 0001CACE
/* 057A8 808094E8 84794AD2 */  lh      $t9, 0x4AD2($v1)           ## 00004AD2
/* 057AC 808094EC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 057B0 808094F0 5721003A */  bnel    $t9, $at, .L808095DC       
/* 057B4 808094F4 846F4AD2 */  lh      $t7, 0x4AD2($v1)           ## 00004AD2
/* 057B8 808094F8 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
/* 057BC 808094FC 28410008 */  slti    $at, $v0, 0x0008           
/* 057C0 80809500 10200009 */  beq     $at, $zero, .L80809528     
/* 057C4 80809504 00022400 */  sll     $a0, $v0, 16               
/* 057C8 80809508 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 057CC 8080950C 00300821 */  addu    $at, $at, $s0              
/* 057D0 80809510 A420CAD2 */  sh      $zero, -0x352E($at)        ## 0001CAD2
/* 057D4 80809514 84684AD0 */  lh      $t0, 0x4AD0($v1)           ## 00004AD0
/* 057D8 80809518 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 057DC 8080951C 00300821 */  addu    $at, $at, $s0              
/* 057E0 80809520 1000002D */  beq     $zero, $zero, .L808095D8   
/* 057E4 80809524 A428CACE */  sh      $t0, -0x3532($at)          ## 0001CACE
.L80809528:
/* 057E8 80809528 28410003 */  slti    $at, $v0, 0x0003           
/* 057EC 8080952C 10200006 */  beq     $at, $zero, .L80809548     
/* 057F0 80809530 00042403 */  sra     $a0, $a0, 16               
/* 057F4 80809534 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 057F8 80809538 00300821 */  addu    $at, $at, $s0              
/* 057FC 8080953C A420CAD0 */  sh      $zero, -0x3530($at)        ## 0001CAD0
/* 05800 80809540 10000020 */  beq     $zero, $zero, .L808095C4   
/* 05804 80809544 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L80809548:
/* 05808 80809548 28410006 */  slti    $at, $v0, 0x0006           
/* 0580C 8080954C 10200006 */  beq     $at, $zero, .L80809568     
/* 05810 80809550 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 05814 80809554 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05818 80809558 00300821 */  addu    $at, $at, $s0              
/* 0581C 8080955C A429CAD0 */  sh      $t1, -0x3530($at)          ## 0001CAD0
/* 05820 80809560 10000018 */  beq     $zero, $zero, .L808095C4   
/* 05824 80809564 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L80809568:
/* 05828 80809568 28410008 */  slti    $at, $v0, 0x0008           
/* 0582C 8080956C 10200006 */  beq     $at, $zero, .L80809588     
/* 05830 80809570 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 05834 80809574 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05838 80809578 00300821 */  addu    $at, $at, $s0              
/* 0583C 8080957C A42ACAD0 */  sh      $t2, -0x3530($at)          ## 0001CAD0
/* 05840 80809580 10000010 */  beq     $zero, $zero, .L808095C4   
/* 05844 80809584 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L80809588:
/* 05848 80809588 2841000A */  slti    $at, $v0, 0x000A           
/* 0584C 8080958C 10200006 */  beq     $at, $zero, .L808095A8     
/* 05850 80809590 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 05854 80809594 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05858 80809598 00300821 */  addu    $at, $at, $s0              
/* 0585C 8080959C A42BCAD0 */  sh      $t3, -0x3530($at)          ## 0001CAD0
/* 05860 808095A0 10000008 */  beq     $zero, $zero, .L808095C4   
/* 05864 808095A4 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L808095A8:
/* 05868 808095A8 2841000D */  slti    $at, $v0, 0x000D           
/* 0586C 808095AC 10200005 */  beq     $at, $zero, .L808095C4     
/* 05870 808095B0 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 05874 808095B4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05878 808095B8 00300821 */  addu    $at, $at, $s0              
/* 0587C 808095BC A42CCAD0 */  sh      $t4, -0x3530($at)          ## 0001CAD0
/* 05880 808095C0 84624AD0 */  lh      $v0, 0x4AD0($v1)           ## 00004AD0
.L808095C4:
/* 05884 808095C4 00026840 */  sll     $t5, $v0,  1               
/* 05888 808095C8 020D7021 */  addu    $t6, $s0, $t5              
/* 0588C 808095CC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 05890 808095D0 002E0821 */  addu    $at, $at, $t6              
/* 05894 808095D4 A424CAD6 */  sh      $a0, -0x352A($at)          ## 0001CAD6
.L808095D8:
/* 05898 808095D8 846F4AD2 */  lh      $t7, 0x4AD2($v1)           ## 00004AD2
.L808095DC:
/* 0589C 808095DC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 058A0 808095E0 55E10006 */  bnel    $t7, $at, .L808095FC       
/* 058A4 808095E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 058A8 808095E8 84784AD0 */  lh      $t8, 0x4AD0($v1)           ## 00004AD0
/* 058AC 808095EC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 058B0 808095F0 00300821 */  addu    $at, $at, $s0              
/* 058B4 808095F4 A438CAC8 */  sh      $t8, -0x3538($at)          ## 0001CAC8
/* 058B8 808095F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808095FC:
/* 058BC 808095FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 058C0 80809600 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 058C4 80809604 03E00008 */  jr      $ra                        
/* 058C8 80809608 00000000 */  nop
