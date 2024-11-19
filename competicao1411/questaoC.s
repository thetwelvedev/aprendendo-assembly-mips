.data
	resultado: .asciiz "s = "
.text 
.globl main
main:
	addi $t0, $t0, 0 # i = 0
	li $t1, 5 # j = 5
	li $t2, 1 # s = 1
	loop:
		beq $t0, $t1, imprimir_resultado # se i < j então para sair tem que ser i == j
		add $t2, $t2, $t0 # s =  s + i
		addi $t0, $t0, 1 # i++
		jal loop
imprimir_resultado:
	#Imprimi a mensagem resultado
	li $v0, 4 
	la $a0, resultado
	syscall
	
	#imprimir o valor do loop
	li $v0, 1
	move $a0, $t2
	syscall	
exit:
	li $v0, 10
	syscall
