import Misiones.*
import Barco.*
import Ciudad.*

class Pirata {
	var property items = []
	var property nivelEbriedad
	var property dinero
	
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
	
	method beberUnTrago(){
		if (self.tieneParaUnTrago()){
			self.aumentarEbriedad(5)
			self.disminuirDinero(1)
		}else{
			throw new Exception(message = "No le alcanza para el trago")
		}
		
	}
	
	method tieneParaUnTrago(){
		return dinero > 0
	}
	
	method tieneItem(item){
		return items.contains(item)
	}
	
	method aumentarEbriedad(cantidad){
		nivelEbriedad += cantidad
	}
	
	method disminuirDinero(cantidad){
		dinero -= cantidad
	}
}

class Espia inherits Pirata{
	
	override method animaASaquear(victima){
		return super(victima) && self.tieneItem("Permiso de la corona")
	}
	
	override method estaPasadoDeGrog(){
		return false
	}
}