section .bss
    count_of_repits resd 1      ; Переменная для хранения количества повторений
    last_element resd 1         ; Переменная для хранения последнего введенного числа
    element resd 1              ; Переменная для хранения текущего числа

section .text
    global _start

_start:
    ; Инициализация переменных
    mov dword [count_of_repits], 0  ; Счётчик повторов = 0
    mov dword [last_element], -1    ; last_element инициализируем значением -1 (ничем не совпадает)
    
    ; Количество чисел задаём напрямую (например, 5)
    mov eax, 5                     ; range = 5
    mov ecx, eax                   ; Сохраняем range в ecx (цикл будет выполняться range раз)

input_loop:
    ; Эмуляция ввода элемента (например, 3, 3, 4, 5, 5)
    ; Для упрощения примера, числовые значения задаются вручную
    mov eax, 3                     ; Элемент = 3
    ; mov eax, 4                     ; Элемент = 4
    ; mov eax, 5                     ; Элемент = 5
    ; mov eax, 5                     ; Элемент = 5
    mov [element], eax

    ; Сравниваем текущий элемент с last_element
    mov eax, [element]
    mov ebx, [last_element]
    cmp eax, ebx
    jne no_repeat                  ; Если элемент не равен последнему, пропускаем

    ; Если элементы одинаковы, увеличиваем счётчик повторов
    mov eax, [count_of_repits]
    inc eax
    mov [count_of_repits], eax

no_repeat:
    ; Обновляем last_element
    mov eax, [element]
    mov [last_element], eax

    ; Переходим к следующему элементу (уменьшаем счетчик)
    loop input_loop

    ; Завершаем программу, возвращая количество повторов в качестве exit code
    mov eax, [count_of_repits]     ; Получаем количество повторений
    mov ebx, eax                   ; Помещаем его в ebx (exit code)
    mov eax, 1                     ; Системный вызов exit
    int 0x80                       ; Вызов ядра
