.global _start


.text

_start:

    movq    $16384,%rax
    movq    $32768,%rbx
    
    addq    %rax,%rbx
    
    
    
    mov     $60,%rax             
    xor     %rdi,%rdi             
    syscall                       

    
.data

info_first:

.quad 0

info_second:

.quad 0