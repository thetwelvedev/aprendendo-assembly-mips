########## Data segment ##########
.data
    msg: .asciiz "v1="
    msg1: .asciiz "\nv2="

########## Code segment ##########
.text
.globl main

main:
    #ler inteiro
    li $v0, 5
    syscall
    move $t0, $v0

    #ler float
    li $v0, 6 # valor lido vai para $f0
    syscall
    
    #imprimir msg
    la $a0, msg
    li $v0, 4
    syscall
    
    #imprimir valor inteiro
    move $a0, $t0
    li $v0, 1
    syscall 
    
     
    
    #imprimir msg1
    la $a0, msg1
    li $v0, 4
    syscall

   

    #imprimir valor float
    li $v0, 2
    mov.s $f12, $f0  #Para imprimir float é $f12 que equivale o $a0 
    syscall

    exit:
        li $v0, 10
        syscall
