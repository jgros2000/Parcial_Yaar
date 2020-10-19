import Pirata.*
object busquedaDelTesoro {
	
	method esSuperadaPorPirata(pirata){
		return pirata.tieneAlguno(#{"brujula","mapa","grogXD"}) && pirata.tieneMenosDeXMonedas(6)
	}
	
}

class ConvertirseEnLeyenda {
	
	const objetoRequerido
	method esSuperadaPorPirata(pirata){
		return pirata.tieneAlMenos10Items() && pirata.tieneAlguno(#{objetoRequerido})
	}
	
}

class Saqueo {
	
	var cantidadDinero
	const victima
	method esSuperadaPorPirata(pirata){
		return pirata.tieneMenosDeXMonedas(cantidadDinero) && pirata.animaASaquear(victima)
	}
	
}