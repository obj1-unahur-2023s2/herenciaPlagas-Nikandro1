import plagas.*


class Hogar {
	var mugre = 0
	var property confort
	method esBueno() = mugre <= confort/2   
	method efectoAtaque(unaPlaga){
		mugre += unaPlaga.nivelDanio()
		unaPlaga.efectoAtaque()
	}
	method mugre() = mugre
}

class Huerta{
	var produccion 
	method esBueno() = produccion > nivelDeProduccion.valor()
	method efectoAtaque(unaPlaga){
		produccion = 0.max(produccion - (unaPlaga.nivelDanio()*0.10))
		if (unaPlaga.trasmiteEnfermedades()){
			produccion = 0.max(produccion - 10)
		unaPlaga.efectoAtaque()
		}
	}
	method produccion() = produccion
}

class Mascota{
	var salud
	method esBueno() = salud > 250
	method efectoAtaque(unaPlaga){ 
		if (unaPlaga.trasmiteEnfermedades()){
			salud = 0.max(salud - unaPlaga.nivelDanio())
		}
		unaPlaga.efectoAtaque()
	}
}

object nivelDeProduccion{
	var property valor = 100
}