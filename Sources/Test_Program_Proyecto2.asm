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
sw	$t2,0($s4)		#
lw	$t3,0($s4)		#

j	continua
addi	$t0,$t0,10		#
addi	$t1,$t0,6		#
continua:
jal	funcion
#beq	
#bne
j 	exit
funcion:
	addi	$t0,$t0,20
	jr	$ra
exit:


