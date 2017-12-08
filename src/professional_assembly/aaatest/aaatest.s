.section .data
value1:
    .byte 0x05, 0x02, 0x01, 0x08, 0x02
value2:
    .byte 0x03, 0x03, 0x09, 0x02, 0x05
    .asciz "The result is %qd\n"
.section .bass
    .lcomm sum, 6
.section .text
.globl _start
_start:
    nop
    xor %edi, %edi # zero out %edi
    movl $5, %ecx  # loop 5 times
    clc            # clear carry flag
loop1:
    movb value1(, %edi, 1), %al
    adcb value2(, %edi, 1), %al # add with carry value1[%edi] value2[%edi]
    aaa 
    movb %al, sum(, %edi, 1)
    inc %edi
    loop loop1
    adcb $0, sum(, %edi, 4)
    movl $1, %eax
    movl $0, %ebx
    int $0x80
