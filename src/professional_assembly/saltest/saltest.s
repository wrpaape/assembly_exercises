.section .data
value1:
    .int 25
.section .text
.globl _start
_start:
    nop
    movl $10, %ebx
    sall %ebx       # ebx *= 2
    movb $2, %cl
    sall %cl, %ebx  # ebx *= 2
    sall $2, %ebx   # ebx *= 2
    sall value1     # value *= 2
    sall $2, value1 # ebx *= 2
    movl $1, %eax
    movl $0, %ebx
    int $0x80
