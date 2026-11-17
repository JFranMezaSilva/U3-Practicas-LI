INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib

; Materia: Lenguajes de Interfaz
; Alumno: Jose Francisco Meza Silva
; Horario: 10:00 a 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: parametros por pila y Limpieza
; Descripción: demostrar el uso de parámetros pasados por pila y la limpieza de la misma
; Comprobacion: al depurar, se observa que EAX = 75 y EBX sigue valiendo 999

.code
main PROC
    mov ebx, 999            ; valor de prueba: EBX debe conservarse

    push 3                  ; segundo argumento (derecha a izquierda)
    push 25                 ; primer argumento

    call MultiplicacionPila
    ; aquí EAX = 75 y EBX sigue valiendo 999
    exit
main ENDP

MultiplicacionPila PROC
    push ebp
    mov ebp, esp            ; ebp es el marco de pila para acceder a los parámetros

    push ebx                ; conservar EBX

    mov eax, [ebp+8]        ; primer argumento: 25
    mov ebx, [ebp+12]       ; segundo argumento: 3

    imul eax, ebx           ; EAX = 25 * 3 = 75

    pop ebx                 ; restaurar EBX
    pop ebp                 ; restaurar EBP

    ret 8                   ; regresa y retira 8 bytes de argumentos
MultiplicacionPila ENDP

END main