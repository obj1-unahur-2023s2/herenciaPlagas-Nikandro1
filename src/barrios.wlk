import elementos.*

class Barrio {
	const elementos = []
	method esCopado() = self.cantidadDeBuenos() > elementos.size()/2
	method cantidadDeBuenos() = return elementos.count({e => e.esBueno()})
}
