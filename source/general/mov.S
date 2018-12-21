.global _start


.text

_start:

    movq    $16384,%rax
    movq    $info_first, %rbx
    movq    $info_second,%rcx
    
    movq    %rax,(%rbx)                         # rax -> memory address in rbx
                                                # movq imm64 in memory not exists
    
    
    
    mov     $60,%rax             
    xor     %rdi,%rdi             
    syscall                       

    
.data

info_first:

.quad 0

info_second:

.quad 0
