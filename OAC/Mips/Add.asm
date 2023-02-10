.data # Variáveis
Lado1: .asciiz  "Lado 1:"
Lado2: .asciiz  "Lado 2:"
Lado3: .asciiz  "Lado 3:"
Lado4: .asciiz  "Lado 4:"
Soma: .asciiz "Soma =>"

.text # Diretriz do Código
# Lendo lado 1
li $v0, 4
la $a0, Lado1
syscall 
li $v0, 5 #ler numero inteiro
syscall 
move $t1, $v0 # $t1 recebe v0

# Lendo lado 2
li $v0, 4
la $a0, Lado2
syscall 
li $v0, 5 #ler numero inteiro
syscall 
move $t2, $v0 # $t1 recebe v0

# Lendo lado 3
li $v0, 4
la $a0, Lado3
syscall 
li $v0, 5 #ler numero inteiro
syscall 
move $t3, $v0 # $t1 recebe v0

# Lendo lado 4
li $v0, 4
la $a0, Lado4
syscall 
li $v0, 5 #ler numero inteiro
syscall 
move $t4, $v0 # $t1 recebe v0

# $t1, $t2, $t3 e $t4
add $t5,$t1,$t2
add $t6,$t3,$t4
add $t0,$t5,$t6

# Apresentação dos resultados na tela
li $v0, 4 # prepara pra string
la $a0, Soma
syscall 
li $v0, 1 # prepara pra inteiro
la $a0, ($t0)
syscall
li $v0, 10
syscall	