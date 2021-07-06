.text
addi $at,$zero,0  		# Relleno 1
addi $at,$zero,0		# Relleno 2
addi $at,$zero,0		# Relleno 3

lui $s0,0x00000101

addi $at,$zero,0		# Relleno 1 para que complete ex y pase a mem
addi $at,$zero,0  		# Relleno 2 para que complete mem y pase a wb
				# como los registro son posedge desde aqui se escribe y luego pasaria a necesitarlo el ori en decode
ori $s1,$s0,0x24
addi $s2,$zero,1
addi $s3,$zero,32

addi $at,$zero,0		# Relleno 1 para que se termine mem y pase a wb el addi $s2,$zero,1

sll $t0,$s2,4
srl $t1,$s3,4

addi $at,$zero,0		# Relleno 1 para que se complete SRL
addi $at,$zero,0		# Relleno 2 para que se complete el mem de srl y usarlo la siguiente

sub $t2,$t0,$t1

