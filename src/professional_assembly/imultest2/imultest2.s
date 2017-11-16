.section .data
output:
    .asciz "The result is %hi\n"
.section .text
.globl _start
_start:
    nop
    movw $680, %ax
    # movw $100, %ax
    movw $100, %cx
    imulw %cx
    seto %bl
    movzbl %bl, %ebx
    pushl %ebx
    pushl %eax
    pushl $output
    call printf
    addl $8, %esp
    popl %ebx
    movl $1, %eax
    int $0x80
