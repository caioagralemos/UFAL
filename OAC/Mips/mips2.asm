.data

.macro finalizarprograma
	li $v0, 10
	syscall
.end_macro

.macro print (%str) # nome da func (parametro)
	.data
	msg: .asciiz %str
	.text
	li $v0, 4 # preparando pra receber uma str
	la $a0, msg 
	syscall
.end_macro 

.text
.globl principal

principal:
print("Olá, mundo!\nMeu nome é Caio.")
finalizarprograma