.section .data
data:
    .int 40
.section .text
.globl _start
_start:
    nop
    movl $0, %eax
    movl $0, %ebx
    movl $0, %ecx
    movb $20, %al
    movb $10, %al
    movsx %al, %eax
    movw $100, %cx
    addw %cx, %bx
    movsx %bx, %ebx
    movl $100, %edx
    addl %edx, %edx
    addl data, %eax
    addl %eax, data
    movl $1, %eax
    movl $0, %ebx
    int $0x80
