.data
	pergunta: .asciiz "Digite seu nome: " #Armazena os dados na memória principal
	saudacao: .asciiz "Olá, "
	nome: .space 25
.text
.globl main
main:
	li $v0, 4 #Imprimir string
	la $a0, pergunta #Armazenar mensagem
	syscall
	
	li $v0, 8 #Ler string
	la $a0, nome #vou armazenar o nome em $a0
	la $a1, 25 #Tem que informar o tamanho de bytes lido, foi informado logo após o .space
	syscall 
	
	move $s0, $a0 #Vou armazenar o valor de $a0 em $s0 pois vou precisar dele depois e o $a0 vai já receber um novo valor
	
	li $v0, 4 #Imprimir string
	la $a0, saudacao #Armazenar mensagem
	syscall
	
	li $v0, 4 #Imprimir string
	move $a0, $s0 # $a0 vai receber o valor de $s0(guardou a string lida)
	syscall 
	
	li $v0, 10
	syscall
	