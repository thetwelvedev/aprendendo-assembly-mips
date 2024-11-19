########## Data segment ##########
.data
    msg: .asciiz "j = "
########## Code segment ##########
.text
.globl main


main:
    #Carrega o valor 12 em $t0
    li $t0, 12 # j tá em $t0

    #Lê um inteiro
    li $v0, 5
    syscall
    move $t1, $v0 # i tá em $t1

    #Se o valor lido for menor que 12, pula para menor
    blt $t1, $t0, menor # i < j vai para menor(uma label)
    
    #Se valor for i >= j continua execução
    
    #Desloca o valor em $t1 em 3 bits a esquerda, ou multiplica por 2^3(mesmo que i *8)
    sll $t1, $t1, 3 # i * 8
    
    #Multiplica o valor em $t0 por 6 e atribui em $t0
    mul $t0, $t0, 6 # j * 6
    
    #Soma o valor em $t0 com $t1 e atribui em $t0
    add $t0, $t0, $t1 # (i * 8) + (j * 6)
    
    #Soma 12 a $t0
    addi $t0, $t0, 12 # ((i * 8) + (j * 6)) + 12

    #Printa a msg
    la $a0, msg
    li $v0, 4
    syscall

    #Printa o valor de $t0
    move $a0, $t0
    li $v0, 1
    syscall

    #Pula para exit
    j exit
menor: 
    #Desloca um bit a esquerda o valor em $t1, ou multiplica por 2^1(mesma coisa que multiplicar por 2)
    sll $t1, $t1, 1 # 2 * i
    
    #Faz a soma do valor de $t1 que é 2*i mais o 8
    addi $t0, $t1, 8 # j = 2 * i + 8
    
    #Carrega e printa a msg
    la $a0, msg 
    li $v0, 4
    syscall

    #Printa o resultado de $t0
    li $v0, 1
    move $a0, $t0
    syscall

    #Pula para encerrar o programa
    j exit

exit: 
    li $v0, 10
    syscall
