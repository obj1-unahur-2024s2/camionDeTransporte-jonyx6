object knightRider {
    
    method peso() = 500
    method peligrosidad() = 10 
  
}

object bumblebee {
    var estado = robot 

    method transformar(unEstado) {
       estado = unEstado
    }
    method peso() = 800 
    method peligrosidad() = estado.peligrosidad()
}

object robot {
    method peligrosidad() =30 
}

object auto {
method peligrosidad() =15 
}

object paqueteDeLadrillo {
    var property cantLadrillos = 0

    method peso() = cantLadrillos * 2 

    method peligrosidad()= 2
}

object arenaGrenal {
  var property peso = 0

  method peligrosidad() =1  
}

object bateriaAntiarea {
  var property equipacion = 0

  method peso() = 200 + equipacion.peso()

  method peligrosidad() = equipacion.peso()


}

object misiles {
  method peso() = 100 
}

object contenedorPortuario {
  var contenito = []

  method cargar(unContenido) {
    contenito.add(unContenido)
  }
 
  method peso() = 100 + contenito.sum({x => x.peso()}) 
  
  method peligrosidad () = if (contenito.isEmpty()){0}else{contenito.map({ x => x.peligrosidad()}).max()}

  
}

object residuosRadioactivos {
  var property peso = 0

  method peligrosidad() = 200
}

object embalajeDeSeguridad {
    var  property  objetoEmbalado = 0

    method peso() = objetoEmbalado.peso()

    method peligrosidad() = objetoEmbalado.peligrosidad() / 2  
  
}