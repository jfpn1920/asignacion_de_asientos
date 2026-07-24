Algoritmo asignacion_de_asientos
	Definir opcion, totalAsientos, i, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir persona, numeroAsiento, tipoAsiento, estado Como Cadena
	Dimension id[100]
	Dimension persona[100]
	Dimension numeroAsiento[100]
	Dimension tipoAsiento[100]
	Dimension estado[100]
	totalAsientos <- 0
	siguienteID <- 1
	//-------------------------------------------//
	//--|menu_principaL_asignacion_de_asientos|--//
	//-------------------------------------------//
	Repetir
		Escribir "menu principaL asignacion de asientos"
		Escribir "1) registrar asignacion"
		Escribir "2) editar asignacion"
		Escribir "3) eliminar asignacion"
		Escribir "4) buscar asignacion"
		Escribir "5) listar asignaciones"
		Escribir "6) ver detalles"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_asiento|--//
			//-----------------------//
			1:
				Escribir "registrar asignacion de asiento"
				id[totalAsientos+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre de la persona:"
				Leer persona[totalAsientos+1]
				Escribir "ingrese el numero del asiento:"
				Leer numeroAsiento[totalAsientos+1]
				Escribir "ingrese el tipo de asiento:"
				Leer tipoAsiento[totalAsientos+1]
				Escribir "ingrese el estado (ocupado/disponible):"
				Leer estado[totalAsientos+1]
				totalAsientos <- totalAsientos + 1
				Escribir "asignacion registrada correctamente."
			//--------------------//
			//--|editar_asiento|--//
			//--------------------//
			2:
				Escribir "editar asignacion"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAsientos Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroAsiento[i], " | ", tipoAsiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre de la persona:"
							Leer persona[i]
							Escribir "ingrese el nuevo numero del asiento:"
							Leer numeroAsiento[i]
							Escribir "ingrese el nuevo tipo de asiento:"
							Leer tipoAsiento[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "asignacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_asiento|--//
			//----------------------//
			3:
				Escribir "eliminar asignacion"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAsientos Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroAsiento[i], " | ", tipoAsiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAsientos Entonces
								Para j <- i Hasta totalAsientos-1 Hacer
									id[j] <- id[j+1]
									persona[j] <- persona[j+1]
									numeroAsiento[j] <- numeroAsiento[j+1]
									tipoAsiento[j] <- tipoAsiento[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalAsientos <- totalAsientos-1
							Escribir "asignacion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_asiento|--//
			//--------------------//
			4:
				Escribir "buscar asignacion"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", persona[i], " | ", numeroAsiento[i], " | ", tipoAsiento[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_asientos|--//
			//---------------------//
			5:
				Escribir "listar asignaciones"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAsientos Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroAsiento[i], " | ", tipoAsiento[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_asiento|--//
			//--------------------------//
			6:
				Escribir "ver detalles de la asignacion"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsientos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la asignacion"
							Escribir "id: ", id[i]
							Escribir "persona: ", persona[i]
							Escribir "numero del asiento: ", numeroAsiento[i]
							Escribir "tipo de asiento: ", tipoAsiento[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalAsientos = 0 Entonces
					Escribir "no hay asientos registrados."
				SiNo
					totalDisponibles <- 0
					totalReservados <- 0
					totalOcupados <- 0
					Para i <- 1 Hasta totalAsientos Hacer
						Si estado[i] = "disponible" Entonces
							totalDisponibles <- totalDisponibles + 1
						FinSi
						Si estado[i] = "reservado" Entonces
							totalReservados <- totalReservados + 1
						FinSi
						Si estado[i] = "ocupado" Entonces
							totalOcupados <- totalOcupados + 1
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de asientos: ", totalAsientos
					Escribir "asientos disponibles: ", totalDisponibles
					Escribir "asientos reservados: ", totalReservados
					Escribir "asientos ocupados: ", totalOcupados
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asignacion de asientos."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo