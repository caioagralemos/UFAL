.data
kp: .asciiz  "Digite o Km percorrido: "
kf: .asciiz  "Digite o Km final: "
.text
li $v0, 4
la $a0, kp
syscall 
li $v0, 5
syscall 
move $t0, $v0
li $t1, 15 
sub $t2,$t1,$t0
li $v0, 4
la $a0, kf
syscall 
li $v0, 1
la $a0, ($t2)
syscall
li $v0, 10
syscall 