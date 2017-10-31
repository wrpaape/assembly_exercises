.section .data
output:
    .asciz "This is section %d\n"
.section .text
.globl _start
_start:
    pushl $1
    pushl $output
    call printf  # printf(&output, 1);
    add $8, %esp # clear up stack (?)
    call overhere
    pushl $3
    pushl $output
    call printf  # printf(&output, 3);
    add $8, %esp # clear up stack (?)
    pushl $0
    call exit    # exit(0);
overhere:
    pushl %ebp      # store base of caller's stack frame
    movl %esp, %ebp # set base of this stack frame
    pushl $2
    pushl $output
    call printf     # printf(&output, 2);
    add $8, %esp    # clear up stack (?)
    movl %ebp, %esp # point stack pointer to base of this stack frame
    popl %ebp       # retrieve base of caller's stack frame
    ret
