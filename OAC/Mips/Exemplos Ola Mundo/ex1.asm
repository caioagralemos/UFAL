.data
msg: .asciiz  "ol� mundo"
.text
li $v0, 4 # print
la $a0, msg # $a0 = msg
syscall 
li $v0, 10
syscall 