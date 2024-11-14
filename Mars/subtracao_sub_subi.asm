.text
.globl main
main: # uso de sub e subi
	li $t0, 50 # $t0 = 50
	li $t1, 20 # $t1 = 20
	sub $s0, $t0, $t1 # $s0 = $t0 - $t1
	
	li $v0, 1 # Imprimir inteiro
	move $a0, $s0 # Coloco o valor de $s0 em $a0 para o syscall
	syscall 
	
	li $v0, 11 #Imprimir caractere
	la $a0, 10 # Carregando o '\n' em $a0 para o syscall(vai fazer pular linha)
	syscall 
	
	subi $s1, $s0, 15 #$s1 = $s0 - 15
	
	li $v0, 1 
	move $a0, $s1
	syscall 
	
	li $v0, 10 #Encerrar o programa
	syscall