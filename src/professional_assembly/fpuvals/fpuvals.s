.section .data
.section .text
.globl _start
_start:
    nop
    fld1
    fldl2t
    fldl2e
    fldpi
    fldlg2
    fldln2
    fldz
    movl $1, %eax
    movl $2, %ebx
    int $0x80
