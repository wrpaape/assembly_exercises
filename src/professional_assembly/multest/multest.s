.section .data
data1:
    .int 315814
data2:
    .int 165432
result:
    .quad 0
output:
    .asciz "The result is %qd\n"
.section .text
.globl _start
_start:
    nop
    movl data1, %eax
    mull data2
    movl %eax, result
    pushl %edx
    pushl %eax
    pushl $output
    call printf
    pushl $0
    call exit
