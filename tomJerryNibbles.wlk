object tom {
  var energia = 50
  
  method comer(unRaton) {
    energia += (12 + unRaton.peso()).min(1000)
    unRaton.serComido()
  }
  
  method correr(metros) {
    energia = (energia - (metros / 2)).max(0)
  }
  
  method velocidadMaxima() = 5 + (energia / 10)
  
  method puedeCazar(distancia) = (distancia / 2) <= energia
  
  method cazar(unRaton, distancia) {
    if (self.puedeCazar(distancia)) {
      self.correr(distancia)
      self.comer(unRaton)
    }
  }
}

object jerry {
  var edad = 2
  
  method peso() = edad * 20
  
  method cumplirAnios() {
    edad += 1
  }
  
  method serComido() {
    
  }
}

object nibbles {
  method peso() = 30
  
  method serComido() {
    
  }
}

object mickey {
  var estaSeco = true
  
  method peso() {
    if (estaSeco) {
      return 20
    } else {
      return 30
    }
  }
  
  method serComido() {
    estaSeco = false
  }
}