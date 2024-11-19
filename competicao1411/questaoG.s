.data
	msg: .asciiz "Digite um número inteiro: "
	resultado: .asciiz "Resultado: "
.text
.globl main
main:	
	#Vai imprimir a primeira mensagem
	li $v0, 4 
	la $a0, msg
	syscall
	
	#Vai ler o valor inteiro
	li $v0, 5
	syscall 
	
	move $t1, $v0
	
	addi $t2, $zero, 1 # i = 0 + 1
	
	loop:
		addi $v0, $v0, -1 # n = n - 1 
		mul $t1, $t1, $v0 # n * (n-1)
		beq $v0, $t2, imprimir_resultado # $v0 == 1 leve vai para o label resultadoo
		jal loop
imprimir_resultado:
	#Imprimi a mensagem resultado
	li $v0, 4 
	la $a0, resultado
	syscall
	
	#imprimir o valor do fatorial
	li $v0, 1
	move $a0, $t1
	syscall	
exit:
	li $v0, 10
	syscall 
	
