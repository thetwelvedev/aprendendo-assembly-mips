.data
	msg1: .asciiz "Digite um número decimal: " #Armazena os dados na memória principal
	msg2: .asciiz "O valor foi: "
	zero: .float 0.0
.text
.globl main
main:
	li $v0, 4 #Vai imprimir string
	la $a0, msg1 #Vai carregar em $a0 o valor de msg1 para o syscall
	syscall 
	
	li $v0, 6 #Vai ler o float
	syscall #o valor lido fica em $f0
	
	lwc1 $f1, zero #vou carregar o valor 0.0 em $f1 para fazer uma operação
	add.s $f12, $f0, $f1 # Essa soma vai guardar o valor de $f0 em $f12 para o syscall de quando for imprimir esse valor
	
	li $v0, 4 #Vai imprimir string
	la $a0, msg2 #Vai carregar em $a0 o valor de msg2 para o syscall
	syscall
	
	li $v0, 2 #Vai imprimir float
	syscall #vai imprimir o valor que tá em $f12
	
	li $v0, 10 #Encerrar programa
	syscall 