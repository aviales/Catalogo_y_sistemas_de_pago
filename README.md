# README

Descripción (Parte I)
Andrés es dueño de una tienda online y está montando un sistema de Ecommerce. La
solución que le vendieron es muy básica y sólo permite mostrar un catálogo de productos
en PDF y tener un carro de compras. Toda la operación es manual y los pagos se hacen por
transferencia.
Andrés, te contrata para extender el ecommerce con dos funcionalidades clave:
● Implementar un catálogo de productos que no sea estático. Cada producto debe
estar categorizado por dos subtipos principales: Digital y Físico. Un producto digital
contiene sólo una foto y los productos físicos pueden tener muchas.
● Registrar los pagos. Los pagos se hacen a través de diferentes plataformas: Stripe,
Paypal y Transbank. Al pagar con Transbank puede ser con tarjeta de crédito,
webpay o oneclick.
La plataforma ya está implementada y Andrés te pide una prueba de conceptos, por lo que
tendrás que entregar lo que se detalla a continuación.
Instrucciones
Crear una aplicación en Rails que contenga:
1. Las migraciones y modelos para manejar los tipos de productos.
2. Las migraciones y modelos para manejar los medios de pago.
3. Un formulario para simular los medios de pago. Implementarás un modelo Orden de
Compra (básico) para poder asociarlo al pago.
Descripción (Parte II)
Uno de los alumnos no conoce lo que es el polimorfismo y crea registros en la base de
datos haciendo operaciones del estilo:
class Animal < ApplicationController
# ...
def create
# ...
kind = params[:animal][:kind]
if kind == "Dog":
animal = Dog.new(animal_params)
elsif kind == "Cat"
animal = Cat.new(animal_params)
else
animal = Cow.new(animal_params)
end
end
end

Instrucciones
1. Tú, como alumno más avanzado, le ayudarás a estudiar y elaborarás un mini
proyecto en Rails explicando paso a paso cómo mejorar la implementación anterior,
desde la creación del proyecto hasta la inserción de datos desde consola. Tendrás
que crear un diagrama con los modelos involucrados y ejemplos para que tu
compañero de clase los pueda usar desde la consola de Rails.
Tip: Te recomendamos pensar en cómo se usa la especie (Dog, Cat, etc) del Animal,
y cómo podríamos usar el Animal (o la tabla Animal) con varias especies distintas