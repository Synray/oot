.late_rodata
glabel D_80BA6FE0
    .float 3.14159274101

glabel D_80BA6FE4
 .word 0x3ED70A3D
glabel D_80BA6FE8
    .float 0.9

.text
glabel OceffSpot_Update
/* 003A0 80BA6410 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 003A4 80BA6414 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 003A8 80BA6418 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 003AC 80BA641C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 003B0 80BA6420 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 003B4 80BA6424 3C0180BA */  lui     $at, %hi(D_80BA6FE0)       ## $at = 80BA0000
/* 003B8 80BA6428 C4266FE0 */  lwc1    $f6, %lo(D_80BA6FE0)($at)  
/* 003BC 80BA642C AFAF004C */  sw      $t7, 0x004C($sp)           
/* 003C0 80BA6430 C4840174 */  lwc1    $f4, 0x0174($a0)           ## 00000174
/* 003C4 80BA6434 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C8 80BA6438 46062302 */  mul.s   $f12, $f4, $f6             
/* 003CC 80BA643C 0C041184 */  jal     cosf
              
/* 003D0 80BA6440 00000000 */  nop
/* 003D4 80BA6444 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003D8 80BA6448 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 003DC 80BA644C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 003E0 80BA6450 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 003E4 80BA6454 46004281 */  sub.s   $f10, $f8, $f0             
/* 003E8 80BA6458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003EC 80BA645C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 003F0 80BA6460 46105082 */  mul.s   $f2, $f10, $f16            
/* 003F4 80BA6464 E7A20048 */  swc1    $f2, 0x0048($sp)           
/* 003F8 80BA6468 8E19017C */  lw      $t9, 0x017C($s0)           ## 0000017C
/* 003FC 80BA646C 0320F809 */  jalr    $ra, $t9                   
/* 00400 80BA6470 00000000 */  nop
/* 00404 80BA6474 3C0180BA */  lui     $at, %hi(D_80BA6FE4)       ## $at = 80BA0000
/* 00408 80BA6478 C7A20048 */  lwc1    $f2, 0x0048($sp)           
/* 0040C 80BA647C C4326FE4 */  lwc1    $f18, %lo(D_80BA6FE4)($at) 
/* 00410 80BA6480 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00414 80BA6484 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00418 80BA6488 46029302 */  mul.s   $f12, $f18, $f2            
/* 0041C 80BA648C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00420 80BA6490 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 00424 80BA6494 C6000174 */  lwc1    $f0, 0x0174($s0)           ## 00000174
/* 00428 80BA6498 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0042C 80BA649C 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00430 80BA64A0 46005401 */  sub.s   $f16, $f10, $f0            
/* 00434 80BA64A4 E60C0058 */  swc1    $f12, 0x0058($s0)          ## 00000058
/* 00438 80BA64A8 E60C0050 */  swc1    $f12, 0x0050($s0)          ## 00000050
/* 0043C 80BA64AC 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 00440 80BA64B0 46008082 */  mul.s   $f2, $f16, $f0             
/* 00444 80BA64B4 3C0180BA */  lui     $at, %hi(D_80BA6FE8)       ## $at = 80BA0000
/* 00448 80BA64B8 8F0A0024 */  lw      $t2, 0x0024($t8)           ## 00000024
/* 0044C 80BA64BC 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 00450 80BA64C0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 00454 80BA64C4 AE0A0024 */  sw      $t2, 0x0024($s0)           ## 00000024
/* 00458 80BA64C8 8F090028 */  lw      $t1, 0x0028($t8)           ## 00000028
/* 0045C 80BA64CC 3C06445C */  lui     $a2, 0x445C                ## $a2 = 445C0000
/* 00460 80BA64D0 AE090028 */  sw      $t1, 0x0028($s0)           ## 00000028
/* 00464 80BA64D4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00468 80BA64D8 8F0A002C */  lw      $t2, 0x002C($t8)           ## 0000002C
/* 0046C 80BA64DC 46062200 */  add.s   $f8, $f4, $f6              
/* 00470 80BA64E0 46121102 */  mul.s   $f4, $f2, $f18             
/* 00474 80BA64E4 AE0A002C */  sw      $t2, 0x002C($s0)           ## 0000002C
/* 00478 80BA64E8 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 0047C 80BA64EC C4266FE8 */  lwc1    $f6, %lo(D_80BA6FE8)($at)  
/* 00480 80BA64F0 E7A20048 */  swc1    $f2, 0x0048($sp)           
/* 00484 80BA64F4 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00488 80BA64F8 44052000 */  mfc1    $a1, $f4                   
/* 0048C 80BA64FC 0C01DCEA */  jal     func_800773A8              
/* 00490 80BA6500 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00494 80BA6504 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00498 80BA6508 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 0049C 80BA650C 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 004A0 80BA6510 4600848D */  trunc.w.s $f18, $f16                 
/* 004A4 80BA6514 C7A20048 */  lwc1    $f2, 0x0048($sp)           
/* 004A8 80BA6518 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 004AC 80BA651C 4600428D */  trunc.w.s $f10, $f8                  
/* 004B0 80BA6520 440D9000 */  mfc1    $t5, $f18                  
/* 004B4 80BA6524 44814000 */  mtc1    $at, $f8                   ## $f8 = 55.00
/* 004B8 80BA6528 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 004BC 80BA652C 000D7400 */  sll     $t6, $t5, 16               
/* 004C0 80BA6530 000E7C03 */  sra     $t7, $t6, 16               
/* 004C4 80BA6534 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 004C8 80BA6538 44055000 */  mfc1    $a1, $f10                  
/* 004CC 80BA653C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 004D0 80BA6540 468021A0 */  cvt.s.w $f6, $f4                   
/* 004D4 80BA6544 00052C00 */  sll     $a1, $a1, 16               
/* 004D8 80BA6548 00052C03 */  sra     $a1, $a1, 16               
/* 004DC 80BA654C 4600910D */  trunc.w.s $f4, $f18                  
/* 004E0 80BA6550 46083280 */  add.s   $f10, $f6, $f8             
/* 004E4 80BA6554 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 004E8 80BA6558 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 004EC 80BA655C 44072000 */  mfc1    $a3, $f4                   
/* 004F0 80BA6560 4600540D */  trunc.w.s $f16, $f10                 
/* 004F4 80BA6564 46023202 */  mul.s   $f8, $f6, $f2              
/* 004F8 80BA6568 00073C00 */  sll     $a3, $a3, 16               
/* 004FC 80BA656C 00073C03 */  sra     $a3, $a3, 16               
/* 00500 80BA6570 44068000 */  mfc1    $a2, $f16                  
/* 00504 80BA6574 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00508 80BA6578 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0050C 80BA657C 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00510 80BA6580 46028482 */  mul.s   $f18, $f16, $f2            
/* 00514 80BA6584 4600428D */  trunc.w.s $f10, $f8                  
/* 00518 80BA6588 00063400 */  sll     $a2, $a2, 16               
/* 0051C 80BA658C 46023202 */  mul.s   $f8, $f6, $f2              
/* 00520 80BA6590 00063403 */  sra     $a2, $a2, 16               
/* 00524 80BA6594 44025000 */  mfc1    $v0, $f10                  
/* 00528 80BA6598 00000000 */  nop
/* 0052C 80BA659C 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00530 80BA65A0 4600910D */  trunc.w.s $f4, $f18                  
/* 00534 80BA65A4 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00538 80BA65A8 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 0053C 80BA65AC 4600428D */  trunc.w.s $f10, $f8                  
/* 00540 80BA65B0 44032000 */  mfc1    $v1, $f4                   
/* 00544 80BA65B4 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 00548 80BA65B8 44085000 */  mfc1    $t0, $f10                  
/* 0054C 80BA65BC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 00550 80BA65C0 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00554 80BA65C4 00084400 */  sll     $t0, $t0, 16               
/* 00558 80BA65C8 00084403 */  sra     $t0, $t0, 16               
/* 0055C 80BA65CC AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00560 80BA65D0 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 00564 80BA65D4 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 00568 80BA65D8 AFA30038 */  sw      $v1, 0x0038($sp)           
/* 0056C 80BA65DC 8FAC004C */  lw      $t4, 0x004C($sp)           
/* 00570 80BA65E0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00574 80BA65E4 858400B6 */  lh      $a0, 0x00B6($t4)           ## 000000B6
/* 00578 80BA65E8 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 0057C 80BA65EC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00580 80BA65F0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00584 80BA65F4 85A400B6 */  lh      $a0, 0x00B6($t5)           ## 000000B6
/* 00588 80BA65F8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0058C 80BA65FC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00590 80BA6600 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 00594 80BA6604 4600218D */  trunc.w.s $f6, $f4                   
/* 00598 80BA6608 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 0059C 80BA660C 8FA2003C */  lw      $v0, 0x003C($sp)           
/* 005A0 80BA6610 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 005A4 80BA6614 440F3000 */  mfc1    $t7, $f6                   
/* 005A8 80BA6618 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 005AC 80BA661C 46028482 */  mul.s   $f18, $f16, $f2            
/* 005B0 80BA6620 000FCC00 */  sll     $t9, $t7, 16               
/* 005B4 80BA6624 0019C403 */  sra     $t8, $t9, 16               
/* 005B8 80BA6628 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 005BC 80BA662C 00000000 */  nop
/* 005C0 80BA6630 468042A0 */  cvt.s.w $f10, $f8                  
/* 005C4 80BA6634 4600320D */  trunc.w.s $f8, $f6                   
/* 005C8 80BA6638 46020182 */  mul.s   $f6, $f0, $f2              
/* 005CC 80BA663C 460A9400 */  add.s   $f16, $f18, $f10           
/* 005D0 80BA6640 440B4000 */  mfc1    $t3, $f8                   
/* 005D4 80BA6644 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 005D8 80BA6648 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 005DC 80BA664C 000B6400 */  sll     $t4, $t3, 16               
/* 005E0 80BA6650 000C6C03 */  sra     $t5, $t4, 16               
/* 005E4 80BA6654 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 005E8 80BA6658 4600810D */  trunc.w.s $f4, $f16                  
/* 005EC 80BA665C 8FAC0034 */  lw      $t4, 0x0034($sp)           
/* 005F0 80BA6660 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 005F4 80BA6664 468092A0 */  cvt.s.w $f10, $f18                 
/* 005F8 80BA6668 44052000 */  mfc1    $a1, $f4                   
/* 005FC 80BA666C AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00600 80BA6670 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00604 80BA6674 00052C00 */  sll     $a1, $a1, 16               
/* 00608 80BA6678 4600448D */  trunc.w.s $f18, $f8                  
/* 0060C 80BA667C 00052C03 */  sra     $a1, $a1, 16               
/* 00610 80BA6680 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00614 80BA6684 46025400 */  add.s   $f16, $f10, $f2            
/* 00618 80BA6688 44199000 */  mfc1    $t9, $f18                  
/* 0061C 80BA668C 00000000 */  nop
/* 00620 80BA6690 0019C400 */  sll     $t8, $t9, 16               
/* 00624 80BA6694 00184C03 */  sra     $t1, $t8, 16               
/* 00628 80BA6698 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 0062C 80BA669C 4600810D */  trunc.w.s $f4, $f16                  
/* 00630 80BA66A0 46805420 */  cvt.s.w $f16, $f10                 
/* 00634 80BA66A4 44062000 */  mfc1    $a2, $f4                   
/* 00638 80BA66A8 00000000 */  nop
/* 0063C 80BA66AC 00063400 */  sll     $a2, $a2, 16               
/* 00640 80BA66B0 00063403 */  sra     $a2, $a2, 16               
/* 00644 80BA66B4 46103100 */  add.s   $f4, $f6, $f16             
/* 00648 80BA66B8 4600220D */  trunc.w.s $f8, $f4                   
/* 0064C 80BA66BC 44074000 */  mfc1    $a3, $f8                   
/* 00650 80BA66C0 00000000 */  nop
/* 00654 80BA66C4 00073C00 */  sll     $a3, $a3, 16               
/* 00658 80BA66C8 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 0065C 80BA66CC 00073C03 */  sra     $a3, $a3, 16               
/* 00660 80BA66D0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00664 80BA66D4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00668 80BA66D8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 0066C 80BA66DC 03E00008 */  jr      $ra                        
/* 00670 80BA66E0 00000000 */  nop
