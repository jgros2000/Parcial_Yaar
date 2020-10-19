class Barco{
	var tripulacion = #{}
	const capacidad
	var mision
	
	method esVulnerableContraPirata(pirata){
		return pirata.nivelEbriedad() >= 90
	}
}