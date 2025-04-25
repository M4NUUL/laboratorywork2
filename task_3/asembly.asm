section .data
    elements dd 3, 4, 3, 5, 5, 6, 6       ; Массив чисел
    elements_count equ ($ - elements) / 4

section .bss
    count_of_repits resd 1          ; Счётчик
    last_element resd 1             ; Предыдущий элемент

section .text
    global _start

_start:
    ; Инициализация
    mov dword [count_of_repits], 0
    mov dword [last_element], -1

    ; Настройка цикла
    mov ecx, elements_count         ; Счётчик
    mov rsi, elements               ; Указатель 

input_loop:
    ; Загрузка элемента
    mov eax, [rsi]
    add rsi, 4                      ; Следующий элемент

    ; Сравнение с предыдущим
    cmp eax, [last_element]
    jne no_repeat

    ; Увеличиваем счётчик
    inc dword [count_of_repits]

no_repeat:
    ; Обновляем предыдущий элемент
    mov [last_element], eax

    loop input_loop

    ; Завершение программы
    mov rax, 60                     ; sys_exit
    mov edi, [count_of_repits]      ; exit code
    syscall