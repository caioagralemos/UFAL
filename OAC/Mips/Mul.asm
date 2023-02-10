.data
num: .asciiz "seu número: "
cubo: .asciiz "o cubo de seu numero é: "

.text
li $v0, 4 #imprimir string
la $a0, num # a0 = num
syscall #execute
li $v0, 5 # recebe um int
syscall #syscall deve vir depois de la ou li
move $a0, $v0 # move int para a0
mul $a1, $a0, $a0 # a1 = a0*a0
mul $a2, $a1, $a0 # a2 = a1*a0

# Apresentação dos resultados na tela
li $v0, 4 # prepara pra string
la $a0, cubo
syscall 
li $v0, 1 # prepara pra inteiro
la $a0, ($a2)
syscall
li $v0, 10
syscall	
