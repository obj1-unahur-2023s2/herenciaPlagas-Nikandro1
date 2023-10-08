class Plaga {
	var poblacion
	
	method trasmiteEnfermedades()= poblacion >= 10 and self.condicionEspecial()
	method condicionEspecial() = true
	method nivelDanio() = poblacion*2
	method efectoAtaque() {poblacion += poblacion * 0.10}
	method poblacion() = poblacion
}


class Garrapata inherits Plaga{
	override method efectoAtaque() {
		poblacion += poblacion * 0.20
	}
}

class Cucaracha inherits Plaga{
	var pesoPromedio
	
	override method nivelDanio()= poblacion*0.5
	override method condicionEspecial()= pesoPromedio>=10
	override method efectoAtaque() {
		super()
		pesoPromedio += 2
	}
}

class Mosquito inherits Plaga{
	override method nivelDanio() = poblacion
	override method condicionEspecial() = poblacion /3 == 0
}

class Pulgas inherits Plaga{
	
}