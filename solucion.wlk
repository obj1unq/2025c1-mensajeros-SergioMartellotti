// paquete

object paquete{ //Paquete pago por G. Lucas
    var pago = true

    method pago(){
        return pago
    }
}


// mensajeros

object chuckNorris{
    const peso = 900
    const puedeLlamar = true

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }
}

object neo{
    const peso = 0
    var puedeLlamar = true

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method puedeLlamar(_puedeLlamar){
        puedeLlamar = _puedeLlamar
    }
}

object lincolnHawk{
    var peso = 0
    const puedeLlamar = false
    var vehiculo = bicicleta
    const pesoAcoplado = 500
    var nroAcoplados = 0


    method peso(){
        return peso + vehiculo.peso() + (nroAcoplados * pesoAcoplado)
    }

    method peso(_peso){
        peso = _peso
    }

    method vehiculo(_vehiculo){
        vehiculo = _vehiculo
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method nroAcoplados(_nroAcoplados){
        nroAcoplados = _nroAcoplados
    }

}

object bicicleta{
    const peso = 10

    method peso() {
      return peso
    }
}

object camion {
    const peso = 500

    method peso() {
      return peso
    }
}


// destinos 

object puenteBrooklin{
    const pesoMaximo = 1000

    method puedePasar(mensajero){
        return (mensajero.peso() < pesoMaximo)
    }
}

object matrix {
    method puedePasar(mensajero){
        return (mensajero.puedeLlamar())
    } 
}


object testing {
  method el_entregadoPor_En_(paquete, _mensajero, _destino){
    return (paquete.pago() and _destino.puedePasar(_mensajero))
  }
}