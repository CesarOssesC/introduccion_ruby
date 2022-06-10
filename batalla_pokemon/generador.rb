class Generador
    def self.numeros
        puts "self"
        return rand(1..100)
    end
    def generar_numeros
        puts "normal"
        return rand(1..100)
    end
end