.data
	PI: .float 3.141592
.text
.globl main
main:
	li $v0, 2 #Imprimir float
	lwc1 $f12, PI #Carregar em $f12 para o syscall
	syscall
	
	li $v0, 10 #encerrar o programa
    	syscall