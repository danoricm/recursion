; recursion.asm
section .data
    prompt db 'Enter an integer: ', 0
    result db 'Factorial: %d', 10, 0

section .bss
    num resb 4

section .text
    extern printf, scanf
    global _start

Factorial:
    ; if n <= 1 return 1
    cmp edi, 1
    jle .base
    ; return n * Factorial(n - 1)
    dec edi
    call Factorial
    imul eax, edi
    ret
.base:
    mov eax, 1
    ret

_start:
    ; Input
    push prompt
    call printf
    add esp, 4
    push num
    push input
    call scanf
    add esp, 8
    push input
    call atoi
    add esp, 4

    ; Compute factorial
    mov edi, eax
    call Factorial

    ; Output result
    push eax
    push result
    call printf
    add esp, 8

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
