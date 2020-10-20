import Misiones.*
import Barco.*
class Pirata {
	var items = []
	var property nivelEbriedad
	var dinero
	
	method sirveParaMision(mision){
		return mision.esSuperadaPorPirata(self)
	}
	
	method tieneAlguno(itemsRequeridos){
		return items.any({ Item => itemsRequeridos.contains(Item) })
	}
	
	method tieneMenosDeXMonedas(cantidad){
		return dinero < cantidad
	}
	
	method tieneAlMenos10Items(){
		return items.size() >= 10
	}
	
	method animaASaquear(victima){
		return victima.esVulnerableContraPirata(self)
	}
	
	method estaPasadoDeGrog(){
		return nivelEbriedad >= 90
	}
	
	method puedeSerTripulante(barco){
		return barco.puedeIncorporarPirata(self)
	}
}
