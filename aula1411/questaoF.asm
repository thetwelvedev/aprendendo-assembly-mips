.data
	msg1: .asciiz "Valor: "
	msg2: .asciiz "Valores recebidos: "
	espaco: .asciiz " "
	msg3: .asciiz "\nMedia: "
	valores: #declarando o array
		.align 2 #tipo word para interios
		.space 16 #Array de 4 interios(4bytes * 4 posições) = 16 bytes de espaço na memória principal
.text
.globl main
main:
	move $t0, $zero # i = 0 ->indice que vou usar para pecorrer o array
	move $t1, $zero #Valor para colocar no array
	li $t2, 16 #carrega o valor 4 * 4 bytespara comparação
	move $t3, $zero # total = 0
	loop: #laço para pegar os valores
		beq $t0, $t2, saida1 #condição para encerrar o loop
		#Imprimir mensagem
		li $v0, 4
		la $a0, msg1
		syscall 
		
		#Ler o valor inteiro
		li $v0, 5
		syscall 
		move $t1, $v0 #Lendo vai para $v0 aqui coloco ele em $t1 registrador que separei para os valores no array
		
		sw $t1, valores($t0) # scanf("%d", &valores[i]);
		add $t3, $t3, $t1 # total += valores[i];
		addi $t0, $t0, 4 # i++; só que aqui vai de 4 em 4 por conta do tamanho de 4 bytes para cada posição
		j loop
		
saida1:	
	move $t0, $zero # zero o i para poder pecorrer o array mas agora vou imprimir
	#Imprimir mensagem
	li $v0, 4
	la $a0, msg2
	syscall 
	
	loop_saida: #Vai imprimir os valores
	beq $t0, $t2, imprimir_media #condição para encerrar o loop
	#imprimir inteiro
	li $v0,1
	lw $a0, valores($t0) #vai carregar em $a0 o valor do array nesse indice
	syscall
	
	#Imprimir espaço
	li $v0, 4
	la $a0, espaco
	syscall
	
	addi $t0, $t0, 4 # i++; na verdade vai de 4 em 4
	j loop_saida
	
imprimir_media:
	li $s0, 4 # 4
	div $t3, $t3, $s0 # total/4
	#Imprimir mensagem
	li $v0, 4
	la $a0, msg3
	syscall
	#Imprimir valor da média
	li $v0,1
	move $a0, $t3 #vai carregar em $a0 o valor de $t3
	syscall
exit:
	li $v0, 10
	syscall	
