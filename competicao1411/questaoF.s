.data 
	texto: .asciiz "Valor: "
	texto1: .asciiz "Valores informados: "
	texto2: .asciiz "\nMedia: "
	espaco: .asciiz " "
.text
	main:	
		#Imprimi a mensagem
		li $v0, 4
		la $a0, texto
		syscall
		#Ler um valor inteiro
		li $v0, 5
		syscall
		move $t0, $v0
	     	#---------------
		li $v0, 4
		la $a0, texto
		syscall

		li $v0, 5
		syscall
		move $t1, $v0
		#---------------
		li $v0, 4
		la $a0, texto
		syscall

		li $v0, 5
		syscall
		move $t2, $v0
		#---------------
		li $v0, 4
		la $a0, texto
		syscall

		li $v0, 5
		syscall
		move $t3, $v0
		#---------------
		#Imprimi os valores
		li $v0, 4
		la $a0, texto1
		syscall

		li $v0, 1
		move $a0, $t0
		syscall

		li $v0, 4
		la $a0, espaco
		syscall

		li $v0, 1
		move $a0, $t1
		syscall

		li $v0, 4
		la $a0, espaco
		syscall

		li $v0, 1
		move $a0, $t2
		syscall

		li $v0, 4
		la $a0, espaco
		syscall

		li $v0, 1
		move $a0, $t3
		syscall
		
		#---------------
		#Somando valores $s0 vai ser o total
		add $s0, $t0, $t1
		add $s1, $t2, $t3
		add $t0, $s0, $s1 #Aqui sai o total
		#Tirando a média
		li $t1, 4
		div $t0, $t0, $t1 # total/4
		
		#Imprimir a média
		li $v0, 4
		la $a0, texto2
		syscall
		
		li $v0, 1
		move $a0, $t0
		syscall
		
	exit:
		li $v0, 10
		syscall



		


