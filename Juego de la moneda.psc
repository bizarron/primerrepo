
Algoritmo Moneda
	definir a Como Entero;
	definir b Como Entero;
	definir c Como Entero;
	definir d Como Entero;	
	definir resultado Como Entero;
	resultado<-0;
	a<-0;
	b<-0;
	c<-0;
	d<-0;
	Escribir "Introduzca 100 para empezar a jugar";
	Mientras a!=100 Hacer
		Leer a;
		Si a=100 Entonces
			Escribir "vamos a empezar el juego:";
		SiNo
			Escribir "numero incorrecto, introduzca 100";
		Fin Si
	Fin Mientras
	
	Mientras d!=2 o a=0 Hacer
	
	Escribir "Cara (1) o Cruz (2) (tiene que introduzir 1 o 2 para elegir)";
	leer b;
	Escribir "¿Cuanto desea apostar?";
	Leer c;
	
	tirada(b, resultado);
	apuesta(c, resultado, b, a);
	balance(a, c, b, resultado);
	
	Escribir "¿Desea continuar?";
	Escribir "Si (1) o No (2)";
	Leer d;
	Fin Mientras

FinAlgoritmo

Funcion tirada (b, resultado)
	b<-azar(2);
	Si b=1 Entonces
		resultado<-1;
	SiNo
		resultado<-2;
	Fin Si
Fin Funcion

Funcion apuesta (c, resultado, b, a)
	Si resultado=1 Entonces
		Escribir "ha salido cara";
	SiNo
		Escribir "ha salido cruz";
	Fin Si
Fin Funcion

Funcion balance (a, c, b, resultado)
	Si resultado=b Entonces
		Escribir "enhorabuena ha ganado";
		a<-a+c;
	SiNo
		Escribir "lo siento ha perdido";
		a<-a-c;
	Fin Si
	Escribir "ha apostado ",c;
	Escribir "su balance actual es de ",a;
Fin Funcion

