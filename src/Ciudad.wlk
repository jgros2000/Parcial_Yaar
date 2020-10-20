import Barco.*

class Ciudad {
	var cantidadHabitantes
	
	method esVulnerableContraPirata(pirata){
		return pirata.nivelEbriedad() >= 50
	}
	
	method esVulnerableContraBarco(barco){
		return barco.todosPasadosDeGrog() || self.esSuperadaEnNumero(barco)
	}
	
	method nuevoHabitante(){
		cantidadHabitantes = cantidadHabitantes + 1
	}
	
	method esSuperadaEnNumero(barco){
		return barco.cantidadTripulantes() >= cantidadHabitantes * 0.4
	}
}
