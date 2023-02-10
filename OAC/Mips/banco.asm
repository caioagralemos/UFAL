# projeto gerenciador de depositos e saques

.data
sal: .asciiz "Informe o saldo inicial (inteiro): "
menu: .asciiz "\n\n***MENU***\n1 - Consultar seu Saldo\n2- Depositar\n3 - Efetuar Saque\n0 - Sair\nInsira o número da operação desejada: "
outsal: .asciiz "Seu saldo é de: R$ "
novosaldo: .asciiz "Seu novo saldo é: "
outdep: .asciiz  "Informe seu depósito: "
outsaq: .asciiz "Informe seu saque: "
out: .asciiz "Programa finalizado com sucesso!"
.text
.globl main

main:
li $v0, 4 # printar string
la $a0, sal # printar string sal
syscall
li $v0, 5 # recebe int
syscall
move $t1, $v0 # t1 = v0 (saldo)

rep:
li $v0, 4 # printa string
la $a0, menu # printa a string menu
syscall
li $v0, 5 # recebe int
syscall
move $t0, $v0 # t0 = v0 (opcao)
beq $t0, $zero, sair # se t0 = 0, sair
jal opmenu # opcoes do menu
j rep # loop

opmenu:
beq $t0, 1, consulta # se t0 = 1, consulta
beq $t0, 2, deposito # se t0 = 2, deposito
beq $t0, 3, saque # se t0 = 3, saque

consulta:
li $v0, 4 # printar string
la $a0, outsal # printa a string outsal
syscall
li $v0, 1 # printar int
la $a0, ($t1) # printa t1 (saldo)
syscall
jr $ra # volta pra quem chamou

deposito:
li $v0, 4 # printa string
la $a0, outdep # printa string outdep
syscall 
li $v0, 5 # printa int
syscall
move $t2, $v0 # t2 = v0
add $t1, $t1, $t2 # t1 = t1 + t2
li $v0, 4 # printa string
la $a0, novosaldo # printa string novosaldo
syscall 
li $v0, 1 # printa int
la $a0, ($t1) # printa t1
syscall
jr $ra # volta pra quem chamou

saque:
li $v0, 4 # printa string
la $a0, outsaq # printa string outsaq
syscall 
li $v0, 5 # printa int
syscall
move $t2, $v0 # t2 = v0
sub $t1, $t1, $t2 # t1 = t1 - t2
li $v0, 4 # printa string
la $a0, novosaldo # printa string novosaldo
syscall 
li $v0, 1 # printa int
la $a0, ($t1) # printa t1
syscall
jr $ra # volta pra quem chamou

sair:
li $v0, 4 # printa string
la $a0, out # printa string out1
syscall
li $v0, 10 # prepara pra encerrar o programa
syscall 