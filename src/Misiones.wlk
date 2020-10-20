import Pirata.*
object busquedaDelTesoro {
	
	method esSuperadaPorPirata(pirata){
		return pirata.tieneAlguno(#{"brujula","mapa","grogXD"}) && pirata.tieneMenosDeXMonedas(6)
	}
	
	method esSuperadaPorBarco(barco){
		return barco.tieneTripulanteCon("llave")
	}
	
}

class ConvertirseEnLeyenda {
	
	const objetoRequerido
	method esSuperadaPorPirata(pirata){
		return pirata.tieneAlMenos10Items() && pirata.tieneItem(objetoRequerido)
	}
	
	method esSuperadaPorBarco(barco){
		return true
	}
}

class Saqueo {
	
	var cantidadDinero
	const victima
	method esSuperadaPorPirata(pirata){
		return pirata.tieneMenosDeXMonedas(cantidadDinero) && pirata.animaASaquear(victima)
	}
	
	method esSuperadaPorBarco(barco){
		return barco.puedeSaquear(victima)
	}
}