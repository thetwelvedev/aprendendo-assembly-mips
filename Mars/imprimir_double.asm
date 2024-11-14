.data
	PI: .double 3.141592653589793
.text
.globl main
main:
	li $v0, 3 #Imprimir double
	ldc1 $f12, PI #Carrega o valor double de PI em $f12 (parte baixa) e $f13 (parte alta) 
	#l.d $f12, PI #Tem essa opção também
	syscall
	
	li $v0, 10 #encerrar o programa
    	syscall