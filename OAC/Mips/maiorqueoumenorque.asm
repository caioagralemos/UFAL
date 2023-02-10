.data
pergunta: .asciiz "Digite sua idade: "
msg1: .asciiz  "Você é menor de idade!"
msg2: .asciiz "Você é maior de idade!"

.text
li $v0, 4 # prepara pra imprimir string
la $a0, pergunta # imprime pergunta
syscall
li $v0, 5 # recebe inteiro
syscall
move $a1, $v0 # a1 recebe numero digitado
li $a2, 18 # t0 = 18
blt $a1, $a2, menor # desvie (branch less than) se t1 for menor que 18 pro bloco "menor"
bge $a1, $a2, maior # desvie (branch greater equal) se t1 for maior ou igual que 18 pro bloco "maior"

menor:
li $v0, 4 # prepara pra imprimir string
la $a0, msg1 # imprime msg'
syscall
li $v0, 10
syscall 

maior:
li $v0, 4 # prepara pra imprimir string
la $a0, msg2 # imprime msg2
syscall 
li $v0, 10
syscall 

