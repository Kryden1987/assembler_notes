.global _start


.text

_start:

    movq    $12,%rax
    movq    $15,%rbx
    
    mulq    %rbx         #Other operand in %rax, result in %rax
    
    
    
    mov     $60,%rax             
    xor     %rdi,%rdi             
    syscall                       

    
