import Misiones.*

class Pirata {
	var items = []
	var nivelEbriedad
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
	
}