INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib


; Materia: Lenguajes de Interfaz
; Alumno: Jose Francisco Meza Silva
; Horario: 10:00 a 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: macros
; Descripción: muestra el uso de macros, en este caso se muestran dos macros, una para mostrar un mensaje y otra para multiplicar dos números.
; Comprobacion: al ejecutar el programa se mostrara un mensaje de bienvenida, luego se mostrara el resultado de la multiplicacion de dos numeros y finalmente se mostrara un mensaje de despedida.


MostrarMensaje MACRO texto
	mov edx, OFFSET texto
	call WriteString
	call Crlf
ENDM

Multi MACRO num1, num2
	mov eax, num1
	imul eax, num2
	call WriteInt
	call Crlf
ENDM

.data
	mensajeBienvenida BYTE "BIENVENIDO AL SISTEMA DE GLOWUP MAKEUP SINALOA", 0
	mensajeFin BYTE "ADIOS", 0

.code
main PROC 
	MostrarMensaje mensajeBienvenida
	MostrarMensaje mensajeFin

	Multi 4, 5

	exit           
main ENDP
END main