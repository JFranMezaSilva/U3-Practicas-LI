INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib

; Materia: Lenguajes de Interfaz
; Alumno: Jose Francisco Meza Silva
; Horario: 10:00 a 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica:Validación de cadena vacía
; Descripción:  solicita al usuario que ingrese una cadena de texto y luego verifica si la cadena está vacía o no. Si la cadena está vacía, se muestra el mensaje "VACIA"; de lo contrario, se muestra "NO VACIA".
; Comprobacion: se ejecuta el programa y se ingresa una cadena de texto. Si la cadena está vacía, se muestra el mensaje "VACIA"; de lo contrario, se muestra "NO VACIA".
   .data
   cadena BYTE 50 DUP(0)          
    msgPedir BYTE "Ingresa una cadena o deja vacia la cadena: ", 0
    msgVacia BYTE "VACIA", 0
    msgNoVacia BYTE "NO VACIA", 0

.code
main PROC
    ; 1. Pedir y leer la cadena
    mov  edx, OFFSET msgPedir
    call WriteString

    mov  edx, OFFSET cadena
    mov  ecx, SIZEOF cadena
    call ReadString ; Lee la entrada del usuario (guarda longitud en EAX)

    ; 2. Validar si está vacía comprobando el primer byte
    cmp  BYTE PTR [cadena], 0 ; ¿El primer carácter es el terminador nulo (0)?
    je   EsVacia ; Si es igual a 0, está vacía

NoEsVacia:
    mov  edx, OFFSET msgNoVacia
    call WriteString
    call Crlf
    jmp  Fin

EsVacia:
    mov  edx, OFFSET msgVacia
    call WriteString
    call Crlf

Fin:
    exit
main ENDP
END main