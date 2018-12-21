.global print_rax

.text

print_rax:
    
    pushq %rax
    pushq %rbx
    pushq %rcx
    pushq %rdx
    
    mov   $8,%rcx
    movq  $rax_data_end,%rdx
    dec   %rdx
    
begin:

    movq  %rax,%rbx
    andq  $0xf,%rbx
    
    cmpq  $0xa,%rbx
    jl    decimal_digit
    
    orq   $0x40,%rbx
    
    jmp   label
    
decimal_digit:

    orq   $0x30,%rbx
    
label:    
    
    movb  %bl,(%rdx)
    shrq  $0x8,%rax
    dec   %rdx
    
    loop  begin
    
print:
    movq  $1, %rax               
    movq  $1, %rdi               
    movq  $rax_message,%rsi        
    movq  $13,%rdx              
    syscall                         

exit:

    popq  %rax 
    popq  %rbx
    popq  %rcx
    popq  %rdx 

.global _start

_start:

    movq $0x123456789abcdef0,%rax
    call print_rax
    mov  $60, %rax               
    xor  %rdi,%rdi              
    syscall                         
    
.data 

rax_message:

.ascii  "rax = 0x"

rax_data_begin:

.byte   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

rax_data_end:

.ascii  "\n"

