require "faker"
require_relative "cliente"
require_relative "mascota"
require_relative "perro"
require_relative "gato"
i=0
lista_clientes = []
for i in 0..99
    cliente = Cliente.new
    cliente.nombre = Faker::Name.name
    cliente.correo = Faker::Internet.email(
        name: cliente.nombre, 
        separators: ".", 
        domain: "ryo.com"
    )
    
    lista_clientes << cliente
end

i=0
lista_mascotas = []
lista_perros = []
lista_gatos = []
for i in 0..49
    perro = Perro.new
    perro.nombre = Faker::Creature::Dog.name
    perro.especie = "Perro"
    perro.raza = Faker::Creature::Dog.breed
    perro.genero = Faker::Creature::Dog.gender
    perro.peso = rand(2..60)
    perro.edad = rand(0..15)
    perro.ladrar
    #perro.mostrar_info


    lista_perros << perro
end
puts "==========================================================================================================="
for i in 0..49
    gato = Gato.new
    gato.nombre = Faker::Creature::Cat.name
    gato.especie = "Gato"
    gato.raza = Faker::Creature::Cat.breed
    gato.genero = Faker::Creature::Dog.gender
    gato.peso = rand(1..10)
    gato.edad = rand(0..19)
    gato.maullar
    #gato.mostrar_info


    lista_gatos << gato
end
#lista_mascotas << "#{lista_perros} <==================" + "=======================================================================================================> #{lista_gatos}"

for i in 0..99
    if i <= 49
        lista_clientes[i].mascota = lista_gatos[i]
    else
        lista_clientes[i].mascota = lista_perros[i-50]
    end    
end
# O opcion 2
# for i in 0..49
#     lista_clientes[i].mascota = lista_gatos[i]
# end

# for i in 0..49
#     lista_clientes[i+50].mascota = lista_perros[i]
# end

for cliente in lista_clientes
    cliente.mostrar_info
end
#Ejemplo simple de como hacer relación circular
# cliente1 = Cliente.new
# cliente1.nombre = Faker::Name.name

# perro_nuevo = Perro.new
# perro_nuevo.nombre = Faker::Creature::Dog.name

# cliente1.mascota = perro_nuevo

# puts cliente1.inspect
# perro_nuevo.cliente = cliente1
# puts "Cliente #{cliente1.nombre} y su mascota es: #{cliente1.mascota.nombre}"
# puts perro_nuevo.inspect
# puts "Perro #{perro_nuevo.nombre} y su dueño es #{perro_nuevo.cliente.nombre}"

# puts perro_nuevo.cliente.nombre
# puts cliente1.mascota.nombre