class Barco{
	var tripulacion = #{}
	const capacidad
	var mision
	
	method esVulnerableContraPirata(pirata){
		return pirata.estaPasadoDeGrog()
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
}