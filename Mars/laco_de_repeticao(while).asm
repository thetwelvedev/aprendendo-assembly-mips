.text 
.globl main
main: #Vai ficar em loop até dá 10 e imprimir o valor no final
	move $t0, $zero # i = 0
	
	while:
		beq $t0, 10, saida #aqui i < 10
		addi $t0, $t0, 1 # i = 1 + 1 ou i++
		j while #ele retorna para a label while e isso faz ficar em loop até beq ser satisfeito e levar para label saida
	saida:
		#imprimir o valor de i
		li $v0, 1
		move $a0, $t0
		syscall 
exit:
	li $v0, 10
	syscall