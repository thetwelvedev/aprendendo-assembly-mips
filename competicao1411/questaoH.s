########## Data segment ##########
.data
    msg: .asciiz "The sum of x + y is: "
########## Code segment ##########
.text
.globl main

main:
    #ler inteiro
    li $v0, 5
    syscall
    move $t0, $v0

    #ler inteiro
    li $v0, 5
    syscall
    move $t1, $v0

    #Move os valores lidos para as variaveis usadas nas função, $a0 e $a1
    move $a0, $t0
    move $a1, $t1
    jal calculeteSum

    j exit
calculeteSum:
    #Salva o que está em $a0 em $t2, pois armazenar outro valor em $a0 futuramente
    move $t2, $a0
    
    #Imprime msg
    la $a0, msg 
    li $v0, 4
    syscall

    #Soma o valor em $a1 com o valor em $t2 e atribui em $t2 
    add $t2, $t2, $a1
    
    #Printa a soma dos valores lidos
    move $a0, $t2
    li $v0, 1
    syscall

    #Volta para o endereço em que a função foi chamada
    jr $ra    

exit:
    #Encerra o programa
    li $v0, 10
    syscall
