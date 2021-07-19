# require_relative "perro"
class Mascota #< Perro
    attr_accessor :nombre
    attr_accessor :peso
    attr_accessor :edad
    attr_accessor :genero
    attr_accessor :especie
    attr_accessor :raza
    attr_accessor :cliente

    def mostrar_info
        puts "Nombre: #{@nombre}"
        puts "Edad: #{@edad}"
        puts "Peso: #{@peso}"
        puts "Genero: #{@genero}"
        puts "Especie: #{@especie}"
        puts "Raza: #{@raza}"
        # puts "Como hace el perro?: #{ladrar}"
        puts "====================================="

    end
end