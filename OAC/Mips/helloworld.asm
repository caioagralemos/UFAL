.data #local para declara��o de vari�veis
msg: .asciiz "Ol� mundo!"
.text # local onde fica o c�digo
li $v0,4 # n�meros passados em sv0 fazem fun��es simples, essa faz um print
la $a0, msg # registrador a0 recebe msg
syscall # executador
li $v0, 10 # prepara pra finalizar
syscall
