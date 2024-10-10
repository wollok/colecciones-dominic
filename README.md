# Dominic Toretto!

**Vamos a trabajar con una simulación inspirada en el personaje Dominic Toretto de la saga Rápidos y Furiosos. 
Tu objetivo será programar la lógica de Dominic, que pueda preparar sus autos  para las carreras de la temporada.**


## Preparando las carreras
Dominic cuenta con muchos autos. Hace pruebas de velocidad y busca los mejores para las carreras. Tiene un taller donde pone en condiciones los autos que tienen problemas. 
Las acciones que se realizan son:
1. Dominic compra (o consigue) autos, que pasan a ser suyos. 
2. Encontrar cuáles de sus autos no están en condiciones para correr y mandarlos a su taller. 
3. Cuando se trabaja en el taller, se reparan todos los autos que haya allí.  
4. Dominic hace pruebas de velocidad en todos sus autos, lo que eventualmente podría afectar la disponibilidad de los autos para la próxima carrera.
5. Al final de la temporada vende todos sus vehículos.

En cualquier momento se quiere averiguar:

6. El promedio de velocidades máximas de todos sus autos, estén en condiciones o no.
7. El auto más rápido que tiene, entre los que están en condiciones de correr.
8. Si la velocidad del auto más rápido es mas del doble que el promedio de velocidades máximas de todos los autos

## Los autos
Los autos que Dominic puede llegar a comprar, acondicionar y usar en las carreras son:

### La Ferrari
* Tiene un motor que está inicialmente está funcionando en un 87% (puede oscilar entre 0 y 100%).
* Está en condiciones para correr si el motor esta funcionando en al menos un 65%.
* Al reparar el motor, queda funcionando al 100%.
* Su velocidad máxima es 110 km/s, más 15 km/s adicionales si el motor está funcionando por encima del 75%.
* El problema es que al hacer una prueba de velocidad su motor se daña disminuyendo en 30 unidades su nivel funcionamiento actual.

### La flecha rubí
* Tiene un nivel de combustible inicial de 100 litros. Inicialmente se trata de gasolina, pero puede cambiar su combustible por nafta o nitrógeno líquido.
* El color inicial es azul.
* Está en condiciones si tiene más de 85 litros de gasolina o 50 litros de nafta. En caso de que esté cargado con nitrógeno líquido, con que no esté totalmente vacío es suficiente. Además, para poder correr debe estar pintado de rojo.
* En el taller la reparación consiste en duplicar la cantidad de combustible que tenga y en cambiarle su color. Cuando su color es rojo cambia a azul, cuando es azul cambia a verde y cuando es verde cambia a rojo. 
* En la prueba de velocidad el auto consume 5 litros del combustible que sea.
* Su velocidad máxima en principio es el doble de los litros de combustible que tenga, pero tambíen depende de que combustible sea. Si es gasolina se le agregan 10 km/s, si es nafta se pierde un 10% y si es nitrógeno líquido se multiplica por 10.

### El intocable
* A veces está en condiciones y otras no, puede variar.
* La prueba de velocidad lo deja fuera de condiciones, pero cuando lo reparan queda nuevamente en condiciones de correr
* Tiene una velocidad máxima fija de 45.

### Inventado
Definir un nuevo auto que pueda ser comprado por Dominic, con el mismo objetivo que los otros autos, pero con una implementación diferente. (ni tan trivial como la del intocable, ni tan compleja como la flecha rubí y ser utilizado en el taller como los otros. 

## Requerimientos:
Definir los objetos necesarios para simular el funcionamiento descripto.

Hacer algunos tests que prueben aspectos importantes del sistema. 







