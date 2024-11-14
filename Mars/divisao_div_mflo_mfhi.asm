.text
.globl main
main:
	li $t0, 32
	li $t1, 5
	
	div $t0, $t1
	
	#parte inteir a em $s0
	mflo $s0
	
	#resto em $s1
	mfhi $s1
	
	li $v0, 1 #Vai imprimir a parte inteira
	move $a0, $s0
	syscall 
	
	#pular linha
	li $v0, 11
	la $a0, 10
	syscall 
	
	li $v0, 1 #Vai imprimir o resto
	move $a0, $s1
	syscall 
	
	#Encerrar o programa
	li $v0, 10
	syscall 