import elementos.*
import plagas.*

class Barrio {
	const elementos = []
	method elementos() = elementos
	method agregarABarrio(unElemento) = elementos.add(unElemento)
	method esCopado() = self.cantidadDeBuenos() > elementos.size()/2
	method cantidadDeBuenos() = return elementos.count({e => e.esBueno()})
}
