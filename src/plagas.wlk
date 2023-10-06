class Plaga {
	var poblacion
	
	method trasmiteEnfermedades()= poblacion >= 100 and self.condicionEspecial()
	method condicionEspecial() = true
	method nivelDanio() = poblacion*2
	
}


class Garrapata inherits Plaga{
	
}

class Cucaracha inherits Plaga{
	var pesoPromedio
	
	override method nivelDanio()= poblacion*0.5
	override method condicionEspecial()= pesoPromedio>=10
}

class Mosquito inherits Plaga{
	override method nivelDanio() = poblacion
	override method condicionEspecial() = poblacion /5 == 0
}

class Pulgas inherits Plaga{
	
}