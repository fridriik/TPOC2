section .text
    global recibir_Operacion
    extern printf

recibir_Operacion:
    ; Recibe los 3 parámetros
    mov eax, dword [esp + 4]     ; Primer operando
    movzx ebx, byte [esp + 8]    ; Operador
    mov ecx, dword [esp + 12]    ; Segundo operando

    ; Chequea qué cálculo debe realizar
    cmp bl, '+'  ; Compara el operador como byte
    je sum
    cmp bl, '-'  ; Compara el operador como byte
    je res
    cmp bl, '*'  ; Compara el operador como byte
    je mul
    cmp bl, '/'  ; Compara el operador como byte
    je div
    jmp error

sum:
    ; Suma los 2 operandos
    add eax, ecx
    jmp imprimir

res:
    ; Resta los 2 operandos
    sub eax, ecx
    jmp imprimir

mul:
    ; Multiplica los 2 operandos
    imul eax, ecx
    jmp imprimir

div:
    ; Divide los 2 operandos
    cmp ecx, 0
    je division_por_cero   ; Manejo de división por cero
    idiv ecx
    jmp imprimir

imprimir:
    ; Muestra el resultado en pantalla
    push eax
    push format_resultado
    call printf
    add esp, 8
    ret

error:
    ; Manejo de error
    push mensaje_error
    call printf
    add esp, 4
    ret

division_por_cero:
    ; Manejo de división por cero
    push mensaje_division_por_cero
    call printf
    add esp, 4
    ret

section .data
    format_resultado db "El resultado es: %d", 10, 0
    mensaje_error db "Lo siento, mis respuestas son limitadas.", 10, 0
    mensaje_division_por_cero db "Error: división por cero.", 10, 0
