.text
.globl main
main: # uso de add e addi
	li $t0, 75 # $t0 = 75
	li $t1, 25 # $t1 = 25
	add $s0, $t0, $t1 # $s0 = $t0 + $t1 faz a soma
	addi $s1, $s0, 50 # $s1 = $s0 + 50
	
	li $v0, 1 #Define o syscall para imprimir um número inteiro
	move $a0, $s0 # Carrega o valor de $s0 em $a0 para o syscall
	syscall
	
	li $v0, 11         # Define o syscall para imprimir um caractere
    	li $a0, 10         # Código ASCII de '\n' (nova linha)
    	syscall            # Executa o syscall para pular uma linha
	
	li $v0, 1 #Define o syscall para imprimir um número inteiro
	move $a0, $s1 # Carrega o valor de $s1 em $a0 para o syscall
	syscall
	
	
	li $v0, 10 #Define o syscall para encerrar o programa
	syscall
