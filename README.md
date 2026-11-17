# Prácticas de Lenguajes de Interfaz

Prácticas de ensamblador x86 (MASM con la librería Irvine32) de la materia **Lenguajes de Interfaz**.

- **Alumno:** Jose Francisco Meza Silva
- **Docente:** Dr. José Luis Medina Jiménez
- **Institución:** Instituto Tecnológico de Culiacán

## Prácticas

| # | Práctica | Código | Qué demuestra |
|---|----------|--------|---------------|
| 1 | Macros | [macros.asm](macros.asm) | Definición y uso de macros (`MostrarMensaje` y `Multi`). |
| 2 | Direcciones de retorno | [direcciones_de_retorno.asm](direcciones_de_retorno.asm) | Cómo se guarda y recupera la dirección de retorno en la pila al llamar `main`, `procUno` y `procDos`. |
| 3 | Procedimientos | [Procedimientos.asm](Procedimientos.asm) | Uso de `PROC`, `CALL` y `RET` llamando un procedimiento varias veces. |
| 4 | Parámetros por pila y limpieza | [Parametros_Limpieza.asm](Parametros_Limpieza.asm) | Paso de parámetros por pila, marco `ebp` y limpieza con `ret 8`. |
| 5 | Validación de cadena vacía | [Cadena_Vacia.asm](Cadena_Vacia.asm) | Lectura con `ReadString` y verificación de si la cadena está vacía. |

## Requisitos

- MASM (Visual Studio) y la librería [Irvine32](https://github.com/surferkip/asmbook) instalada en `C:\Irvine\`.
- Cada archivo incluye `INCLUDE C:\Irvine\Irvine32.inc` e `INCLUDELIB C:\Irvine\Irvine32.lib`.

## Uso

1. Abre el archivo `.asm` en tu proyecto MASM/Irvine32.
2. Ensambla, enlaza y ejecuta.
3. Cada archivo trae en su encabezado la descripción y la comprobación esperada.
