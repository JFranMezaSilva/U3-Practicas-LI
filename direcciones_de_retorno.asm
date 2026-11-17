INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib

; Materia: Lenguajes de Interfaz
; Alumno: Jose Francisco Meza Silva
; Horario: 10:00 a 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: direcciones de retorno 
; Descripción: Este programa muestra las direcciones de retorno de las funciones 'main', 'procUno' y 'procDos'.
; Comprobacion: al ejecutar el programa, se imprimen las direcciones de retorno en hexadecimal, demostrando cómo se almacenan y recuperan en la pila durante las llamadas a funciones.

.data


.code
main PROC 
	mov eax,[esp]        ; Obtiene la dirección de retorno actual en el tope de la pila
	call WriteHEx        ; Imprime la dirección en hexadecimal
	call Crlf
	call procUno         ; Guarda en la pila la dirección de retorno hacia 'main' y salta
	exit
main ENDP
	
procUno PROC
	mov eax, [esp]       ; Obtiene la dirección de retorno hacia 'main'
	call WriteHex
	call Crlf
	call procDos         ; Guarda en la pila la dirección de retorno hacia 'procUno' y salta
	
	ret                  ; Extrae la dirección de la pila y regresa a 'main'
procUno ENDP

procDos PROC
	mov eax, [esp]       ; Obtiene la dirección de retorno hacia 'procUno'
	call WriteHex
	call Crlf
	ret                  ; Extrae la dirección de la pila y regresa a 'procUno'
procDos ENDP

END main