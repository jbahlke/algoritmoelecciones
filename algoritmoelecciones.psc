Algoritmo Elecciones
	Definir votcand1, votcand2,votcand3 Como Entero // Cantidad de votos de los candidatos
	Definir votnulo Como Entero //Votos nulos
	Dimension votantes[100] //Arreglo para almacenar las identificaciones
	Definir f Como Entero // Fin de votaciones 1=Si, 0=NO (Variable de control)
	Definir ver Como Entero // Verifica existencia de votante
	f <- 0
	ver <- 0
	votcand1 <- 0
	votcand2 <- 0
	votcand3 <- 0
	votnulo <- 0
	Mientras (f==0) hacer
		Escribir "Ingrese su identificacion para poder votar"
		Escribir "o Ingrese 0 para ver los resultados"
		leer v
		Si (v <> 0) Entonces
			Para i<-1 Hasta 100 Con Paso 1 Hacer
				Si (votantes[i]==v) Entonces
					ver = 1;
				Sino
					ver = 0;
					votantes[i]<-v
				Fin Si
			Fin Para
			si(ver==1) entonces
				Limpiar Pantalla
				Escribir "¡Usted ya registro su voto, no puede hacerlo dos veces!"
			Sino
				Limpiar Pantalla
				Escribir " Elija un candidato "
				Escribir "1. Louis"
				Escribir "2. Eloisa"
				Escribir "3. Daniel"
				Escribir "Ingresa el número correspondiente al candidato que desea elegir"
				leer voto
				Segun voto Hacer
					1:
						votcand1 <- votcand1 + 1
					2:
						votcand2 <- votcand2 + 1
					3:
						votcand3 <- votcand3 + 1
					De Otro Modo:
						votnulo <- votnulo + 1
				Fin Segun
			FinSi
		Sino
			Escribir " Resultados de las elecciones "
				si(votcand1>votcand2 y votcand1>votcand3) entonces
					Escribir "El ganador es Louis con ",votcand1," votos"
					si(votcand2>votcand3) entonces
						Escribir "Eloisa tiene ",votcand2," votos"
						Escribir "Daniel tiene ",votcand3," votos"
					Sino
						Escribir "Daniel tiene ",votcand3," votos"
						Escribir "Eloisa tiene ",votcand2," votos"
					FinSi
				Sino
					si (votcand2>votcand1 y votcand2>votcand3) entonces
						Escribir "El ganador es Eloisa con ",votcand2," votos"
						
						si(votcand1>votcand3) entonces
							Escribir "Louis tiene ",votcand1," votos"
							Escribir "Daniel tiene ",votcand3," votos"
						Sino
							Escribir "Daniel tiene ",votcand3," votos"
							Escribir "Louis tiene ",votcand1," votos"
						FinSi
					Sino
						si (votcand3>votcand1 y votcand3>votcand2) entonces
							Escribir "El ganador fué Daniel con ",votcand3," votos"
							si(votcand2>votcand1) entonces
								Escribir "Eloisa tiene ",votcand2," votos"
								Escribir "Louis tiene ",votcand1," votos"
							Sino
								Escribir "Louis tiene ",votcand1," votos"
								Escribir "Eloisa tiene ",votcand2," votos"
							FinSi	
						Sino
							Escribir "Tenemos un empate entre candidatos, iremos a balotaje"
					FinSi
				FinSi
			FinSi
			Escribir "Votos No válidos: ",votnulo
			f<-1
			Fin Si
	FinMientras
FinAlgoritmo
