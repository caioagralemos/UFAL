.data

menu: .asciiz "***MENU***\n1 - Somar\n2- Subtrair\n3 - Multiplicar\n4 - Dividir\n0 - Encerrar\nInsira o número da operação desejada: "
n1: .asciiz "Entre com o primeiro número: "
n2: .asciiz "Entre com o segundo número: "
r: .asciiz "Seu resultado é: "
pula: .asciiz "\n\n"
fim: .asciiz "Programa finalizado com sucesso!"

.macro pulalinha
li $v0, 4 # printa string
la $a0, pula # printa a string pula
syscall
.end_macro 

.macro menu
li $v0, 4 # printa string
la $a0, menu # printa a string menu
syscall
li $v0, 5 # recebe int
syscall
move $t0, $v0 # t0 = v0
.end_macro 

.text
.globl principal

principal:
menu
beq $t0, 1, somar # se t0 = 1, vai para somar
beq $t0, 2, subtrair # se t0 = 2, vai para subtrair
beq $t0, 3, multiplicar # se t0 = 3, vai para multiplicar
beq $t0, 4, dividir # se t0 = 4, vai para dividir
beq $t0, 0, sair # se t0 = 0, vai para sair

somar:
# recebendo n1
li $v0, 4 # printa string
la $a0, n1 # printa n1
syscall
li $v0, 5 # recebe int
syscall 
move $t1, $v0 # t1 = v0
# recebendo n2
li $v0, 4 # printa string
la $a0, n2 # printa n2
syscall
li $v0, 5 # recebe int
syscall 
move $t2, $v0 # t2 = v0
# somando e printando
add $t3, $t1, $t2 # t3 = t1 + t2
li $v0, 4 # printa string
la $a0, r # printa string r
syscall 
li $v0, 1 # printa int
la $a0, ($t3) # printa int t3
syscall 
pulalinha # executa pula linha
j principal # volta pra principal

subtrair:
# recebendo n1
li $v0, 4 # printa string
la $a0, n1 # printa n1
syscall
li $v0, 5 # recebe int
syscall 
move $t1, $v0 # t1 = v0
# recebendo n2
li $v0, 4 # printa string
la $a0, n2 # printa n2
syscall
li $v0, 5 # recebe int
syscall 
move $t2, $v0 # t2 = v0
# subtraindo e printando
sub $t3, $t1, $t2 # t3 = t1 - t2
li $v0, 4 # printa string
la $a0, r # printa string r
syscall 
li $v0, 1 # printa int
la $a0, ($t3) # printa int t3
syscall 
pulalinha # executa pula linha
j principal # volta pra principal

multiplicar:
# recebendo n1
li $v0, 4 # printa string
la $a0, n1 # printa n1
syscall
li $v0, 5 # recebe int
syscall 
move $t1, $v0 # t1 = v0
# recebendo n2
li $v0, 4 # printa string
la $a0, n2 # printa n2
syscall
li $v0, 5 # recebe int
syscall 
move $t2, $v0 # t2 = v0
# multiplicando e printando
mul $t3, $t1, $t2 # t3 = t1 * t2
li $v0, 4 # printa string
la $a0, r # printa string r
syscall 
li $v0, 1 # printa int
la $a0, ($t3) # printa int t3
syscall 
pulalinha # executa pula linha
j principal # volta pra principal

dividir:
# recebendo n1
li $v0, 4 # printa string
la $a0, n1 # printa n1
syscall
li $v0, 5 # recebe int
syscall 
move $t1, $v0 # t1 = v0
# recebendo n2
li $v0, 4 # printa string
la $a0, n2 # printa n2
syscall
li $v0, 5 # recebe int
syscall 
move $t2, $v0 # t2 = v0
# dividindo e printando
div $t3, $t1, $t2 # t3 = t1 * t2
li $v0, 4 # printa string
la $a0, r # printa string r
syscall 
li $v0, 1 # printa int
la $a0, ($t3) # printa int t3
syscall 
pulalinha # executa pula linha
j principal # volta pra principal

sair:
li $v0, 4 # printa string
la $a0, fim # printa string fim
syscall 
li $v0, 10 # prepara pra finalizar
syscall 