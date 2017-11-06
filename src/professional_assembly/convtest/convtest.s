.section .data
.align 128
value1:
    .float 1.25, 124.79, 200.0, -312.5
.align 128
value2:
    .int 1, -435, 0, -25
.section .bss
data:
.align 128
    .lcomm mydata, 16
.section .text
.globl _start
_start:
    nop
    cvtps2dq value1, %xmm0
    cvttps2dq value1, %xmm1
    cvtdq2ps value2, %xmm2
    movdqu %xmm0, mydata
    movl $1, %eax
    movl $2, %ebx
    int $0x80
