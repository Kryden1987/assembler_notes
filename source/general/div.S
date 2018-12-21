.global _start


.text

_start:

    movq    $77,%rax
    movq    $12,%rbx
    
    divq    %rbx         #Dividend in %rax, result in %rax, mod in %rdx
    
    
    
    mov     $60,%rax             
    xor     %rdi,%rdi             
    syscall                       

    
