Algoritmo Elecciones
	Definir votcand1, votcand2, votcand3 Como Entero
	Definir votnulo Como Entero
	Dimensionar votantes(100) // Cantidad de votos de los candidatos
	Definir f Como Entero // Votos nulos
	Definir ver Como Entero // Arreglo para almacenar las identificaciones
	f <- 0 // Fin de votaciones (Variable de control)
	ver <- 0 // Verifica existencia de votante
	votcand1 <- 0
	votcand2 <- 0
	votcand3 <- 0
	votnulo <- 0
	Mientras (f==0) Hacer
		Escribir 'Ingrese su identificacion para poder votar'
		Escribir 'o Ingrese 0 para ver los resultados'
		Leer v
		Si (v<>0) Entonces
			Para i<-1 Hasta 100 Con Paso 1 Hacer
				Si (votantes[i]==v) Entonces
					ver <- 1
				SiNo
					ver <- 0
					votantes[i] <- v
				FinSi
			FinPara
			Si (ver==1) Entonces
				Limpiar Pantalla
				Escribir '¡Usted ya registro su voto, no puede hacerlo dos veces!'
			SiNo
				Limpiar Pantalla
				Escribir ' Elija un candidato '
				Escribir '1. Louis'
				Escribir '2. Eloisa'
				Escribir '3. Daniel'
				Escribir 'Ingresa el número correspondiente al candidato que desea elegir'
				Leer voto
				Según voto Hacer
					1:
						votcand1 <- votcand1+1
					2:
						votcand2 <- votcand2+1
					3:
						votcand3 <- votcand3+1
					De Otro Modo:
						votnulo <- votnulo+1
				FinSegún
			FinSi
		SiNo
			Escribir ' Resultados de las elecciones '
			Si (votcand1>votcand2 Y votcand1>votcand3) Entonces
				Escribir 'El ganador es Louis con ', votcand1, ' votos'
				Si (votcand2>votcand3) Entonces
					Escribir 'Eloisa tiene ', votcand2, ' votos'
					Escribir 'Daniel tiene ', votcand3, ' votos'
				SiNo
					Escribir 'Daniel tiene ', votcand3, ' votos'
					Escribir 'Eloisa tiene ', votcand2, ' votos'
				FinSi
			SiNo
				Si (votcand2>votcand1 Y votcand2>votcand3) Entonces
					Escribir 'El ganador es Eloisa con ', votcand2, ' votos'
					Si (votcand1>votcand3) Entonces
						Escribir 'Louis tiene ', votcand1, ' votos'
						Escribir 'Daniel tiene ', votcand3, ' votos'
					SiNo
						Escribir 'Daniel tiene ', votcand3, ' votos'
						Escribir 'Louis tiene ', votcand1, ' votos'
					FinSi
				SiNo
					Si (votcand3>votcand1 Y votcand3>votcand2) Entonces
						Escribir 'El ganador fué Daniel con ', votcand3, ' votos'
						Si (votcand2>votcand1) Entonces
							Escribir 'Eloisa tiene ', votcand2, ' votos'
							Escribir 'Louis tiene ', votcand1, ' votos'
						SiNo
							Escribir 'Louis tiene ', votcand1, ' votos'
							Escribir 'Eloisa tiene ', votcand2, ' votos'
						FinSi
					SiNo
						Escribir 'Tenemos un empate entre candidatos, iremos a balotaje'
					FinSi
				FinSi
			FinSi
			Escribir 'Votos No válidos: ', votnulo
			f <- 1
		FinSi
	FinMientras
FinAlgoritmo
