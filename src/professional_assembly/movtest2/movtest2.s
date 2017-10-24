# movtest2.s - An example of moving data from memory to a register
# ------------------------------------------------------------------------------
.section .data
value:
    .int 1
.section .text
.globl _start
_start:
    nop # for gdb
    movl $100, %eax
    movl %eax, value
    movl $1, %eax
    movl $0, %ebx
    int $0x80
