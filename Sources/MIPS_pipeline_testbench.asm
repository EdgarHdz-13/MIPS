.text
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0

lui $s0,0x00000101

addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0

ori $s1,$s0,0x24
addi $s2,$zero,1
addi $s3,$zero,32

addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0

sll $t0,$s2,4
srl $t1,$s3,4

addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0
addi $at,$zero,0

sub $t2,$t0,$t1

