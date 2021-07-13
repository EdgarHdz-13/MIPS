.text
#addi $at,$zero,0  		# Relleno 1
#addi $at,$zero,0		# Relleno 2
#addi $at,$zero,0		# Relleno 3

lui $s0,0x00000101

#addi $at,$zero,0		# Relleno 1 para que complete ex y pase a mem
#addi $at,$zero,0  		# Relleno 2 para que complete mem y pase a wb



#addi $at,$zero,0
#addi $at,$zero,0
#addi $at,$zero,0

				# como los registro son posedge desde aqui se escribe y luego pasaria a necesitarlo el ori en decode
addi $s2,$zero,1
addi $s3,$zero,32
addi $sp,$sp,-4
sw $s0, 0($sp)
lw $2,0($sp)

#addi $at,$zero,0		# Relleno 1 para que se termine mem y pase a wb el addi $s2,$zero,1

srl $t2,$2,1
sll $t0,$s3,4


#addi $at,$zero,0		# Relleno 1 para que se complete SRL
#addi $at,$zero,0		# Relleno 2 para que se complete el mem de srl y usarlo la siguiente

sub $t3,$t0,$t1



