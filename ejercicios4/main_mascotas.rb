require "faker"
require_relative "mascota"
require_relative "perro"
require_relative "gato"
i=0
lista_mascotas = []
lista_perros = []
lista_gatos = []
for i in 1..50
    perro = Perro.new
    perro.nombre = Faker::Creature::Dog.name
    perro.especie = "Perro"
    perro.raza = Faker::Creature::Dog.breed
    perro.genero = Faker::Creature::Dog.gender
    perro.peso = rand(2..60)
    perro.edad = rand(0..15)
    perro.ladrar
    perro.mostrar_info


    lista_perros << perro
end
puts "==========================================================================================================="
for i in 1..50
    gato = Gato.new
    gato.nombre = Faker::Creature::Cat.name
    gato.especie = "Gato"
    gato.raza = Faker::Creature::Cat.breed
    gato.genero = Faker::Creature::Dog.gender
    gato.peso = rand(1..10)
    gato.edad = rand(0..19)
    gato.maullar
    gato.mostrar_info


    lista_gatos << gato
end
lista_mascotas << "#{lista_perros} <==================" + "=======================================================================================================> #{lista_gatos}"
#File.write("clientes.txt", lista_mascotas)
#print lista_mascotas.inspect