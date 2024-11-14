.data
	idade: .word 21 #valor inteiro na memória RAM
.text 
	li $v0, 1 #Define o syscall para imprimir um número inteiro / Vai ler inteiro
	lw $a0, idade #Vai carregar em $a0(parâmetro para o syscall) o valor inteiro
	syscall #Vai executar
	
	li $v0, 10 #Define o syscall para encerrar o programa
	syscall