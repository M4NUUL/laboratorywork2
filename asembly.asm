section .data
    prompt      db 'Enter a string: ', 0
    promptLen   equ $-prompt
    newline     db 10
    buffer      times 256 db 0
    compressed  times 512 db 0

section .text
    global _start

_start:
    ; write(1, prompt, promptLen)
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, promptLen
    syscall

    ; read(0, buffer, 256)
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 256
    syscall

    ; rax = длина строки
    mov rbx, rax
    dec rbx                 ; исключаем символ новой строки
    cmp rbx, 0
    jle .exit

    ; указатели
    mov rsi, buffer         
    mov rdi, compressed    
    xor rcx, rcx            ; счётчик символов
    lodsb                   
    mov dl, al              
    mov rcx, 1

.next:
    lodsb
    cmp al, 10              
    je .flush

    cmp al, dl
    je .same
    ; другой символ — записать
    call write_symbol
    mov dl, al              
    mov rcx, 1
    jmp .next

.same:
    inc rcx
    jmp .next

.flush:
    call write_symbol

    ; вывод compressed
    mov rax, 1
    mov rdi, 1
    mov rsi, compressed
    mov rdx, rdi
    sub rdx, compressed
    syscall

.exit:
    ; вывод \n
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    ; выход
    mov rax, 60
    xor rdi, rdi
    syscall

; ======== Write (DL, RCX) -> to RDI buffer
write_symbol:
    mov [rdi], dl
    inc rdi
    mov rax, rcx
    call int_to_str
    ret

; ======== int_to_str: rax → str @ rdi
int_to_str:
    push rax
    push rcx
    push rdx
    push rbx

    mov rcx, 0
    mov rbx, 10

    test rax, rax
    jnz .convert

    mov byte [rdi], '0'
    inc rdi
    jmp .done

.convert:
.loop:
    xor rdx, rdx
    div rbx
    push rdx
    inc rcx
    test rax, rax
    jnz .loop

.write:
    pop rax
    add al, '0'
    mov [rdi], al
    inc rdi
    loop .write

.done:
    pop rbx
    pop rdx
    pop rcx
    pop rax
    ret
