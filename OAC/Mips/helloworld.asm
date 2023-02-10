.data #local para declaração de variáveis
msg: .asciiz "Olá mundo!"
.text # local onde fica o código
li $v0,4 # números passados em sv0 fazem funções simples, essa faz um print
la $a0, msg # registrador a0 recebe msg
syscall # executador
li $v0, 10 # prepara pra finalizar
syscall
