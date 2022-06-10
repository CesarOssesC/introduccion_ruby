require 'faker'

class GeneradorPalabras
    attr_accessor :palabra

    def self.generar
        al_azar = rand(0..1)
        if al_azar==0
                return generar_palabra_estatica
        else
                return generar_planeta
        end
    end
    private #sirve para que ningun otro archivo puedan llamar estos metodos 
            #(quedan como metodos privados, los puede usar sólo este archivo)
    def self.generar_palabra_estatica
        palabras_secretas = ["ruby", "desarrollador", "programa", "computador", "windows", "visualcode", "rubyonrails", "github", "ubuntu", "profesor", "codigo"]
        posicion_al_azar = rand(0..palabras_secretas.length-1)
        return palabras_secretas[posicion_al_azar]
    end

    def self.generar_planeta
        return Faker::Space.planet.downcase
    end
end