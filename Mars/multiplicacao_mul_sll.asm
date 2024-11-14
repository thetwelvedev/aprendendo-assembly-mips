.text
.globl main
main: # uso do mul sll
	li $t0, 5 # $t0 = 5
	li $t1, 5 # $t1 = 5
	mul $s0, $t0, $t1 # $s0 = $t0 * $t1
	
	li $v0, 1 # Imprimir inteiro fica definido para o syscall
	move $a0, $s0 #Carrego o valor de $s0 em $a0 para o syscall
	syscall 
	
	li $v0, 11 #Imprimir caractere
	la $a0, 10 # Carregando o '\n' em $a0 para o syscall(vai fazer pular linha)
	syscall 
	
	li $t0, 6 # $t0 = 6
	sll $s0, $t0, 3 # s0 = t0 * 3(2^3) -> s0 = 6 * 8
	
	li $v0, 1 # imprimir inteiro fica definido para o syscall
	move $a0, $s0 # Carrega o $a0 com o valor de $s0 e o syscall vai executar o valor de $a0
	syscall 
	
	li $v0, 10 #Encerrar programa
	syscall 