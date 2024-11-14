.data
    caractere: .byte 'A' #caractere a ser impresso
.text
    li $v0, 4 #imprimir String ou Caractere
    la $a0, caractere #indicar o endereço em que está a mensagem
    syscall
    
    li $v0, 10 #encerrar o programa
    syscall
