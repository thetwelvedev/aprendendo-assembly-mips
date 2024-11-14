.data
	msg: .asciiz "Digite um número inteiro: "
	par: .asciiz "O número é par"
	impar: .asciiz "O número é impar"
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
	
	# Verficar se é divísel por 2
	li $t0, 2 #Peguei o valor 2
	div $v0, $t0 # t0/2
	mfhi $s0 # vou guardar o resto pois ele que vou usar na comparação
	
	# Condicional
	beq $s0, $zero, numeropar #Aqui vejo se s0 == 0 se for vou para o rótulo numeropar
	bne $s0, $zero, numeroimpar #Aqui vejo se s0 != 0 se for vou para o rótulo numeroimpar
numeropar:
	li $v0, 4 #Vai imprimir a mensagem de que é par
	la $a0, par
	syscall 
	jal exit #vai para o encerramento das instruções

numeroimpar:
	li $v0, 4 #Vai imprimir a mensagem de que é impar
	la $a0, impar
	syscall
	jal exit
exit:
	li $v0, 10
	syscall 
	