glabel func_8083C61C
/* 0A40C 8083C61C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A410 8083C620 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 0A414 8083C624 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A418 8083C628 01C47021 */  addu    $t6, $t6, $a0              
/* 0A41C 8083C62C 91CE1CBF */  lbu     $t6, 0x1CBF($t6)           ## 00011CBF
/* 0A420 8083C630 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0A424 8083C634 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0A428 8083C638 11C1001B */  beq     $t6, $at, .L8083C6A8       
/* 0A42C 8083C63C 00000000 */  nop
/* 0A430 8083C640 94AF0088 */  lhu     $t7, 0x0088($a1)           ## 00000088
/* 0A434 8083C644 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 0A438 8083C648 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 0A43C 8083C64C 13000016 */  beq     $t8, $zero, .L8083C6A8     
/* 0A440 8083C650 00000000 */  nop
/* 0A444 8083C654 93397465 */  lbu     $t9, 0x7465($t9)           ## 80127465
/* 0A448 8083C658 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 0A44C 8083C65C 3C068085 */  lui     $a2, %hi(func_8084E604)    ## $a2 = 80850000
/* 0A450 8083C660 01194021 */  addu    $t0, $t0, $t9              
/* 0A454 8083C664 8108E6EC */  lb      $t0, -0x1914($t0)          ## 8015E6EC
/* 0A458 8083C668 24C6E604 */  addiu   $a2, $a2, %lo(func_8084E604) ## $a2 = 8084E604
/* 0A45C 8083C66C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0A460 8083C670 1100000D */  beq     $t0, $zero, .L8083C6A8     
/* 0A464 8083C674 00000000 */  nop
/* 0A468 8083C678 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0A46C 8083C67C 0C20D716 */  jal     func_80835C58              
/* 0A470 8083C680 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A474 8083C684 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0A478 8083C688 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0A47C 8083C68C 24C63048 */  addiu   $a2, $a2, 0x3048           ## $a2 = 04003048
/* 0A480 8083C690 0C20C899 */  jal     func_80832264              
/* 0A484 8083C694 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0A488 8083C698 8FA9001C */  lw      $t1, 0x001C($sp)           
/* 0A48C 8083C69C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0A490 8083C6A0 10000001 */  beq     $zero, $zero, .L8083C6A8   
/* 0A494 8083C6A4 A12006AD */  sb      $zero, 0x06AD($t1)         ## 000006AD
.L8083C6A8:
/* 0A498 8083C6A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A49C 8083C6AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A4A0 8083C6B0 03E00008 */  jr      $ra                        
/* 0A4A4 8083C6B4 00000000 */  nop
