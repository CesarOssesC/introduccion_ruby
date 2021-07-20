require "faker"
require_relative "pokemon"

class GeneradorPokemones
    def self.generar
        pokemon_local = Pokemon.new
        pokemon_local.nombre = Faker::Games::Pokemon.name
        pokemon_local.hp = rand(10..200)
        pokemon_local.ataque = rand(10..100)
        return pokemon_local
    end

    def self.generar_fuertes
        pokemon_visitante = Pokemon.new
        pokemon_visitante.nombre = Faker::Games::Pokemon.name
        pokemon_visitante.hp = rand (100..500)
        pokemon_visitante.ataque = rand (50..300)
        return pokemon_visitante
    end

    def self.auto_generado
        return Pokemon.new
    end
end