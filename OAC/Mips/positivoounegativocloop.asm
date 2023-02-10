.data
msgpositivo: .asciiz "Número positivo\n"
msgnegativo: .asciiz "Número negativo!\n"
msg: .asciiz "Digite seu número: "
fim: .asciiz "Fim do programa\n"

.text
li $v0, 4 # print string
la $a0, msg # printa msg
syscall 
li $v0, 5 # recebe int
syscall 
move $a1, $v0 # $a1 = v0
beq $a1, $zero, sair # se t0 = 0, vai pro bloco sair
jal verifica # se chegar até aqui, vamos pro bloco verifica

verifica:
bgt $a1, $zero, maior
blt $a1, $zero, menor

maior:
li $v0, 4 # printa string
la $a0, msgpositivo # printa positivo
syscall
j sair # incondicionalmente, vai para sair

menor:
li $v0, 4 # printa string
la $a0, msgnegativo # printa negativo
syscall
j sair # incondicionalmente, vai para sair

sair:
li $v0, 4 # printa string
la $a0, fim # printa fim
syscall
li $v0, 10 # sair do programa
syscall