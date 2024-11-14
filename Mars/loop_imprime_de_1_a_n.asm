.data 	
	msg: .asciiz "Digite um número inteiro: "
	espaco: .byte ' '
.text
.globl main
main:	
	#Vai imprimir a primeira mensagem
	li $v0, 4 
	la $a0, msg
	syscall
	
	#ler um número inteiro
	li $v0, 5
	syscall 
	
	move $t0, $v0 #valor lido em $t0
	
	move $t1, $zero # i = 0
	
	loop:
		bgt $t1, $t0, saida #i > n seria a condição de parada do i <= n
		
		#imprimir n($t1)
		li $v0, 1
		move $a0, $t1
		syscall 
		
		#imprimir o espaço em branco
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1 # i = i + 1
		j loop #para ficar no loop
	saida:
		li $v0, 10
		syscall 
		
		