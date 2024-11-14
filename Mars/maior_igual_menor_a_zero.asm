.data
	msg: .asciiz "Digite um número inteiro: "
	maior: .asciiz "Maior que zero"
	igual: .asciiz "Igual a zero"
	menor: .asciiz "Menor que zero"
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
	
	# Condicional
	beq $v0, $zero, printigual #Aqui vejo se v0 == 0 se for vou para o rótulo printigual
	bgt $v0, $zero, printmaior #Aqui vejo se v0 > 0 se for vou para o rótulo printmaior
	blt $v0, $zero, printmenor #Aqui vejo se v0 > 0 se for vou para o rótulo printmaior
	
printmaior:
	li $v0, 4 #Vai imprimir a mensagem de que é maior que zero
	la $a0, maior
	syscall
	jal exit
	
printigual:
	li $v0, 4 #Vai imprimir a mensagem de que é igual a zero
	la $a0, igual
	syscall 
	jal exit #vai para o encerramento das instruções

printmenor:
	li $v0, 4 #Vai imprimir a mensagem de que é menor que zero
	la $a0, menor
	syscall
	jal exit
exit:
	li $v0, 10
	syscall 


	
	
	
	