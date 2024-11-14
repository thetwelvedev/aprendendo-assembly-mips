.text
.globl main
main: #soma
	li $t0,  # $t0 = 
	li $t1,  # $t1 = 
	add $s0, $t0, $t1 # $s0 = $t0 + $t1 faz a soma
	
	li $v0, 1 #Define o syscall para imprimir um número inteiro
	move $a0, $s0 # Carrega o valor de $s0 em $a0 para o syscall
	syscall
	
	li $v0, 10 #Define o syscall para encerrar o programa
	syscall
