.data
	msg1: .asciiz "Forneça sua idade: " #Armazena os dados na memória principal
	msg2: .asciiz "Sua idade é: "
.text
.globl main
main:
	li $v0, 4 #Vai imprimir string
	la $a0, msg1 #Vai carregar em $a0 o valor de msg1 para o syscall
	syscall 
	
	li $v0, 5 #Vai ler o inteiro  
	syscall #Não preciso armazenar nada em $a0 pois já li o valor em $v0
	
	move $s0, $v0 #Vou armazenar em $s0 o valor de $v0 pois ele vai precisar receber um novo valor para o próximo syscall
	
	li $v0, 4 #Vai imprimir string
	la $a0, msg2 #Vai carregar em $a0 o valor de msg2 para o syscall
	syscall
	
	li $v0, 1 #Vai imprimir inteiro
	move $a0, $s0 #Agora vou colocar em $a0 o valor que li e guardei em $s0
	syscall # Como $a0 já está com valor inteiro vou apenas dar o comando de imprimir inteiro
	
	li $v0, 10 #Encerrar programa
	syscall 
	
	