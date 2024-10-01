import cosas.*

object camion {
    var carga =[]

    method cargar(unObjeto) {
      carga.add(unObjeto)
    }

    method descargar(unObjeto) {
      carga.remove(unObjeto)
    }

    method peso() =1000 + carga.sum({ x=> x.peso()}) 

    method cargaConPesoImpar() = carga.all({x => x.odd()})

    method objetoQuePesa(unPeso) = carga.any({x=> x.peso() == unPeso})

    method objetoConPeligrosidad(unaPeligrosidad) = carga.find({x=> x.peligrosidad()==unaPeligrosidad}) 
}