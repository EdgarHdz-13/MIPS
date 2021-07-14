.text


lui $s0,0x00000101

addi $s2,$zero,1
addi $s3,$zero,32
addi $sp,$sp,-4
sw $s0, 0($sp)
lw $2,0($sp)

srl $t2,$2,1
sll $t0,$s3,4

sub $t3,$t0,$t1



