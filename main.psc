Proceso main
	
	Definir __numero Como Numero
	Definir __texto Como Texto
	Definir __texto_modificado Como Texto
	
	Escribir "Ingrese un numero: "
	Leer __numero
	
	__texto = ConvertirATexto(__numero)
	
	//1.234
	Si Longitud(__texto) == 4 Entonces
		Para i = 1 Hasta Longitud(__texto) Con Paso 1 Hacer
			__texto_modificado = __texto_modificado + Subcadena(__texto, i, i)
			Si i == 1 Entonces
				__texto_modificado = __texto_modificado + "."
			FinSi
		FinPara
	FinSi
	
	//12.345
	Si Longitud(__texto) == 5 Entonces
		Para i = 1 Hasta Longitud(__texto) Con Paso 1 Hacer
			__texto_modificado = __texto_modificado + Subcadena(__texto, i, i)
			Si i == 2 Entonces
				__texto_modificado = __texto_modificado + "."
			FinSi
		FinPara
	FinSi
	
	//123.456
	Si Longitud(__texto) == 6 Entonces
		Para i = 1 Hasta Longitud(__texto) Con Paso 1 Hacer
			__texto_modificado = __texto_modificado + Subcadena(__texto, i, i)
			Si i == 3 Entonces
				__texto_modificado = __texto_modificado + "."
			FinSi
		FinPara
	FinSi
	
	//1.234.567
	Si Longitud(__texto) == 7 Entonces
		Para i = 1 Hasta Longitud(__texto) Con Paso 1 Hacer
			__texto_modificado = __texto_modificado + Subcadena(__texto, i, i)
			Si i == 1 o i == 4 Entonces
				__texto_modificado = __texto_modificado + "."
			FinSi
		FinPara
	FinSi
	
	Escribir __texto_modificado
	
FinProceso