.data
x: .asciiz "Dividendo: "
y: .asciiz "Divisor: "
res: .asciiz "O resultado da sua divisão é: "

.text

li $v0, 4 # imprime string
la $a0, x # string a ser manipulada x
syscall 
li $v0, 5 # recebe um int
syscall
move $a1, $v0 # move int para a1

li $v0, 4 # imprime string
la $a0, y # string a ser manipulada y
syscall
li $v0, 5 # recebe um int
syscall 
move $a2, $v0 # move int para a2

div $a3, $a1, $a2 # a3 = a1/a2

#printing
li $v0, 4 # imprime string
la $a0, res # string a ser manipulada res
syscall 
li $v0, 1 # prepara pra imprimir int
la $a0, ($a3) # imprime a3
syscall 
li $v0, 10 # prepara pra finalizar o programa
syscall 
