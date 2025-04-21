section .data
    prompt      db "Enter N: ", 0
    result_msg  db "Result: ", 0
    newline     db 10, 0

section .bss
    num     resb 4
    result  resb 4

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 9
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, num
    mov edx, 4
    int 0x80

    mov ecx, num
    xor eax, eax
    xor ebx, ebx

parse_input:
    mov bl, byte [ecx]
    cmp bl, 10
    je find_prime
    sub bl, '0'
    imul eax, eax, 10
    add eax, ebx
    inc ecx
    jmp parse_input

find_prime:
    mov esi, eax
    mov edi, eax
    mov ebx, eax

search_loop:
    push esi
    call is_prime
    cmp eax, 1
    je found
    pop esi

    dec edi
    push edi
    call is_prime
    cmp eax, 1
    je found
    pop edi

    inc ebx
    push ebx
    call is_prime
    cmp eax, 1
    je found
    pop ebx

    jmp search_loop

found:
    pop eax
    sub esi, eax
    mov [result], esi

    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 8
    int 0x80

    mov eax, [result]
    call print_number

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

is_prime:
    pop ebx
    cmp ebx, 2
    jl not_prime
    cmp ebx, 2
    je prime

    mov ecx, 2
check_loop:
    mov eax, ebx
    xor edx, edx
    div ecx
    cmp edx, 0
    je not_prime
    inc ecx
    mov eax, ecx
    imul eax, eax
    cmp eax, ebx
    jle check_loop

prime:
    mov eax, 1
    ret

not_prime:
    mov eax, 0
    ret

print_number:
    mov ecx, 10
    mov edi, num + 3
    mov byte [edi], 0
print_loop:
    xor edx, edx
    div ecx
    add dl, '0'
    dec edi
    mov [edi], dl
    test eax, eax
    jnz print_loop

    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, num + 4
    sub edx, edi
    int 0x80
    ret
