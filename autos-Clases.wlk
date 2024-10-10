import colores.*

object dominic{

  const autos = []

  method comprar(auto){
    autos.add(auto)
  }
  method finDeTemporada(){
    autos.clear()
  }
  method promedioVelocidades() = 
    autos.sum({auto=> auto.velocidadMaxima()}) / autos.size()

  method masRapido() = 
    self.autosEnCondiciones().max{auto=> auto.velocidadMaxima()}

  method autosEnCondiciones() = 
    autos.filter{auto=>auto.enCondiciones()}

  method autosNoEnCondiciones() = 
    autos.filter{auto=>not auto.enCondiciones()}

  method hayUnAutoMuyRapido() = 
    self.masRapido().velocidadMaxima() > 2 * self.promedioVelocidades()

  method hacerPrueba(){
    autos.forEach({auto=>auto.hacerPrueba()})
  }

  method mandarAlTaller(){
    taller.recibirAutos(self.autosNoEnCondiciones())
  }
}

object taller {
  const autos = []

  method recibirAutos(nuevos){
    autos.addAll(nuevos)
  }

  method trabajar(){
    autos.forEach{auto=>auto.reparar()}
  }

}

class Ferrari {
//  Tiene un motor que está inicialmente está funcionando en un 87% (puede oscilar entre 0 y 100%).
  var motor = 87 

//El problema es que al hacer una prueba de velocidad su motor se daña 
//disminuyendo en 30 unidades su nivel funcionamiento actual.
  method pruebaVelocidad(){
    motor = (motor - 30).max(0)
  } 
//Está en condiciones para correr si el motor esta funcionando en al menos un 65%.
  method enCondiciones() = motor >= 65

//Al reparar el motor, queda funcionando al 100%.
  method reparar() {
    motor = 100
  }

//Su velocidad máxima es 110 km/s, 
//más 15 km/s adicionales si el motor está funcionando por encima del 75%.
  method  velocidadMaxima() = 110 + if (motor > 75) 15 else 0


}

object gasolina{
  method nivelMinimo() = 85
  method modificarVelocidad(litros)= litros + 10
}

object nafta{
  method nivelMinimo() = 50
  method modificarVelocidad(litros)= litros * 0.9
}

object nitro{
  method nivelMinimo() = 0
    method modificarVelocidad(litros)= litros * 10
}

class AutoCombustible {
//Tiene un nivel de combustible inicial de 100 litros. 
//Inicialmente se trata de gasolina, pero puede cambiar su combustible por nafta o nitrógeno líquido.
//El color inicial es azul.
  var color = azul
  var nivel = 100
  var property combustible = gasolina

// En la prueba de velocidad el auto consume 5 litros del combustible que sea.
  method pruebaVelocidad(){
    nivel = nivel - 5
  } 
  //Está en condiciones si tiene más de 85 litros de gasolina o 50 litros de nafta. 
  //En caso de que esté cargado con nitrógeno líquido, con que no esté totalmente vacío es suficiente. 
  //Además, para poder correr debe estar pintado de rojo.

  method enCondiciones() = nivel > combustible.nivelMinimo() and color == rojo

//En el taller la reparación consiste en duplicar la cantidad de combustible que tenga y en cambiarle su color. 
//Cuando su color es rojo cambia a azul, cuando es azul cambia a verde y cuando es verde cambia a rojo. 

  method reparar() {
    nivel = nivel * 2  
    color = color.aCualCambia()
  }

//Su velocidad máxima en principio es el doble de los litros de combustible que tenga, 
//pero tambíen depende de que combustible sea. 
//Si es gasolina se le agregan 10 km/s, 
//si es nafta se pierde un 10% y 
//si es nitrógeno líquido se multiplica por 10.
  method velocidadMaxima() = combustible.modificarVelocidad(nivel * 2)

}

object intocable{
  var enCondiciones = true 
  
  method pruebaVelocidad(){
    enCondiciones = false
  } 
  method enCondiciones() = enCondiciones

  method reparar() {
    enCondiciones = true
  }

  method  velocidadMaxima() = 45

}



