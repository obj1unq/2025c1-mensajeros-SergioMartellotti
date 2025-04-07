// paquete

object paquete{ //Paquete pago por G. Lucas
    var pago = true

    method pago(){
        return pago
    }

    method pago(_pago){
        pago = _pago
    }

    method puedeEntragarse(mensajero, destino){
        return (self.pago() and destino.puedePasar(mensajero))
  }
}


// mensajeros

object chuckNorris{
    const puedeLlamar = true

    method peso(){
        return 900
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
    method peso(){
        return peso + vehiculo.peso()
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



}

object bicicleta{
    const peso = 10

    method peso() {
      return peso
    }
}

object camion {
    const peso = 500
    const pesoAcoplado = 500
    var nroAcoplados = 0

    method peso() {
      return peso + (nroAcoplados * pesoAcoplado)
    }

    method nroAcoplados(_nroAcoplados){
        nroAcoplados = _nroAcoplados
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