.data
pergunta: .asciiz "\nDigite sua idade ou zero para encerrar o programa: "
msg1: .asciiz "Menor de idade!\n"
msg2: .asciiz "Maior de idade!\n"
msgsaida: .asciiz "Programa encerrado com sucesso!\n"

.text
.globl prog

prog:
li $v0, 4 # print string
la $a0, pergunta
syscall
li $v0, 5 # recebe int
syscall
move $a1, $v0 # a1 = v0
beq  $a1, $zero, sair # se a1 = zero, sair
blt $a1, 18, menor # se menor que 18, vai para o bloco menor
bge $a1, 18, maior # se maior ou igual a 18, vai para o bloco maior
j prog ## volta INCONDICIONALMENTE para o início desse bloco

menor:
li $v0, 4 # printa string
la $a0, msg1 # printa msg1
syscall
j prog # começa o programa de novo

maior:
li $v0, 4 # printa string
la $a0, msg2 # printa msg1
syscall
j prog # começa o programa de novo

sair:
li $v0, 4 # printa string
la $a0, msgsaida # printa msg1
syscall
li $v0, 10 # encerrar programa
syscall 