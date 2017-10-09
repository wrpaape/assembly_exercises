# cpuid.s Sample program to extract the processor Vendor ID
# ------------------------------------------------------------------------------
.data
output:
    .ascii "The Processor Vendor ID is 'XXXXXXXXXXXX'\n"

.text
.global _main
_main:
    movl $0, %eax
    cpuid
    movl $output, %edi
    movl %ebx, 28(%edi)
    movl %edx, 32(%edi)
    movl %ecx, 36(%edi)
    movl $4, %eax
    movl $1, %ebx
    movl $output, %ecx
    movl $42, %edx
    int $0x80
    movl $1, %eax
    movl $0, %ebx
    int $0x80
