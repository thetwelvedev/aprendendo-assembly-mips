########## Data segment ##########
.data
    msg: .asciiz "t = "
    msg1: .asciiz "\n"
########## Code segment ##########
.text
.globl main
main:
    #Carrega imediatamente 12 em $t0 e 5 em $t1
    li $t0, 12
    li $t1, 5

    #Soma $t0 com $t0 e atribui a $s0
    add $s0, $t0, $t0
    
    #Soma $t0 com $t1 e atribui a $s1
    add $s1, $t0, $t1
    
    #Subtrai $s1 de $s0 e atribui em $s0
    sub $s0, $s0, $s1

    #Printa a msg
    la $a0, msg
    li $v0, 4
    syscall
    
    #Printa o valor final das contas
    move $a0, $s0
    li $v0, 1
    syscall

    #Printa a quebra de linha
    la $a0, msg1
    li $v0, 4
    syscall

    #Encerra o programa
    li $v0, 10
    syscall