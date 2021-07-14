.text
addi	$t0,$zero,10		#
addi	$t1,$zero,6		#
add	$s0,$zero,$t0		#
sub	$s1,$zero,$t0		#
or	$s2,$t0,$t1		#
ori	$s3,$t1,5		#
lui	$s4,0x1001		#
andi	$s5,$t0,3		#
#and	$t5,$t1,$t0
nor	$s6,$t1,$t0		#
srl	$s7,$t0,2		#
sll	$t2,$t0,2		#
#addi 	$s4,$zero,0		#
addi $sp,$sp,-4
sw	$t2,0($sp)		#

lw	$t3,0($sp)		#


j	continua
addi	$t0,$t0,10		#
addi	$t1,$t0,6		#
addi	$t0,$t0,10		#
addi	$t1,$t0,6		#
addi	$t0,$t0,10		#
addi	$t1,$t0,6		#
addi	$t0,$t0,10		#
addi	$t1,$t0,6		#
continua:
jal	funcion
j 	exit

funcion:
	addi	$t0,$t0,20
	jr	$ra
	addi	$t1,$t0,500
	
exit:	addi 	$t4,$zero,23

beq	$s5,$s6,continua_mal
beq	$s5,$s7,continua_bien
continua_mal:
	addi $t0,$zero,100
	addi $t0,$zero,100
	addi $t0,$zero,100
continua_bien:

bne	$s5,$s7,continua_mal2
bne	$s5,$zero,exit_2
continua_mal2:
	addi $t0,$zero,100	
exit_2: 	
	addi $t0,$zero,32


