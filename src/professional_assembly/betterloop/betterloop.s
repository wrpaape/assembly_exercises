.section .data
output:
    .asciz "The value is %d\n"
.section .text
.globl _start
_start:
    movl $0, %ecx
    movl $0, %eax
    jecxz done
loop:
    addl %ecx, %eax
    loop loop
done:
    pushl %eax
    pushl $output
    call printf
    movl $1, %eax
    movl $0, %ebx
    int $0x80
