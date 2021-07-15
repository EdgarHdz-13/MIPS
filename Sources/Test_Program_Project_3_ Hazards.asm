
#Forwarding aritmetico-lógico

#addi 	$t1,$zero,10
#add  	$t2,$zero,$t1

#Forwarding Branch
jal	funcion_1

addi 	$t3,$zero,100
j exit
funcion_1:
addi	$t3,$zero,1
addi	$t3,$zero,2
addi	$t3,$zero,3
jr	$ra

addi $t1,$zero,5
exit:


