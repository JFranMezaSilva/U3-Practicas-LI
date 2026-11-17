INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib


; Materia: Lenguajes de Interfaz
; Alumno: Jose Francisco Meza Silva
; Horario: 10:00 a 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Programación de procedimientos
; Descripción: uso de procedimientos en lenguaje ensamblador, demostrando cómo se pueden llamar y retornar de ellos
; Comprobacion: Se ejecuta el programa y se observa que se imprimen los mensajes de inicio, dentro del procedimiento y fin del programa en el orden correcto, confirmando que los procedimientos funcionan correctamente.
.data
	mensajeInicio BYTE "inicio de programa",0
	mensajeProcedimiento BYTE "Estoy dentro del procedimiento",0
	mensajeFin BYTE "Fin del programa",0

.code
main PROC
	mov edx, OFFSET mensajeInicio
	call WriteString
	call Crlf

	;Primera llamada
	call mensajeAviso

	mov eax, 10

	;Segunda llamado 
	call mensajeAviso ;/EIP salta a las instrucciones dentro del procedimiento
	mov eax, 20

	mov edx, OFFSET mensajeFin
	call WriteString
	call Crlf

	exit

	main ENDP

	mensajeAviso PROC
		mov edx, OFFSET mensajeProcedimiento
		call WriteString
		call Crlf
		ret   ;/recupera la direccion de EIP a la seguiente instruccion de donde se CALL el procedimiento
		mensajeAviso ENDP

	END main