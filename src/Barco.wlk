class Barco{
	var tripulacion = #{}
	const capacidad
	var mision
	
	
	method esTemible(){
		return mision.esSuperadaPorBarco(self)
	}
	
	method esVulnerableContraPirata(pirata){
		return pirata.estaPasadoDeGrog()
	}
	
	method puedeSaquear(victima){
		return victima.esVulnerableContraBarco(self)
	}
	method esVulnerableContraBarco(barco){
		return self.cantidadTripulantes() <= (barco.cantidadTripulantes() / 2) 
	}
	
	method puedeIncorporarPirata(pirata){
		return self.hayEspacio() && pirata.sirveParaMision(mision)
	}
	
	method hayEspacio(){
		return self.cantidadTripulantes() < capacidad
	}
	
	method cantidadTripulantes(){
		return tripulacion.size()
	}
	
	method incorporarTripulante(pirata){
		if (self.puedeIncorporarPirata(pirata)){
			tripulacion.add(pirata)
		}
	}
	
	method cambiarMision(nuevaMision){
		mision = nuevaMision
		self.actualizarTripulacion()
	}
	
	method actualizarTripulacion(){
		tripulacion.removeAllSuchThat({ Tripulante => not Tripulante.sirveParaMision(mision)})
	}
	
	method pirataMasEbrio(){
		return tripulacion.max({Tripulante => Tripulante.nivelEbriedad()})
	}
	
	method anclarEnCiudad(ciudad){
		tripulacion.forEach({Tripulante => Tripulante.beberUnTrago()})
		self.perderPirataMasEbrio(ciudad)
	}
	
	method perderPirataMasEbrio(ciudad){
		tripulacion.remove(self.pirataMasEbrio())
		ciudad.nuevoHabitante()
	}
	
	method tieneTripulanteCon(item){
		return tripulacion.any({Tripulante => Tripulante.tieneItem(item)})
	}
	
	method todosPasadosDeGrog(){
		return tripulacion.all({Tripulante => Tripulante.estaPasadoDeGrog()})
	}
	
	method cuantosPasadosDeGrog(){
		return self.quienesEstanPasados().size()
	}
	
	method quienesEstanPasados(){
		return tripulacion.filter({Tripulante => Tripulante.estaPasadoDeGrog()})
	}
	
	method cuantosItemsDiferentesDeGrog(){
		return self.quienesEstanPasados().map({Tripulante => Tripulante.items()}).flatten().asSet().size()
	}
}