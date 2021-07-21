require_relative 'generador_palabras'

class Juego

    attr_reader :palabra_secreta
    attr_reader :vidas

    def initialize 
        @palabra_secreta = GeneradorPalabras.generar
        @vidas = 5
    end

    def comenzar
        puts "Adivina la palabra secreta (Tienen que ver con el curso)"
        puts "Escribe una letra para ir revelando la palabra"
        puts "Tienes 5 vidas por letra\n" 
        guiones = cambiar_letras_a_guiones_1
        while guiones.gsub(" ", "") != @palabra_secreta and @vidas > 0 
            puts "\nTe quedan #{@vidas} vidas"
            print guiones
            letra = gets.chomp
            letra_encontrada = false
            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    guiones[posicion_letra * 2] = letra
                    letra_encontrada = true
                end
            end

            if letra_encontrada == false
                @vidas -= 1
                puts "\nTe equivocaste jajajaja prueba con otra letra."
            end
        end
        
        he_ganado?
        
    end

    def he_ganado?
            if @vidas > 0
                puts "\nFelicitaciones Adivinaste! La palabra era: #{@palabra_secreta} 😊"
            else
                puts "\nAhorcado!!! X.X 🤣 Te quedaste con la duda JA JA JA 🤣!!!"
                puts "Intenta otra vez!"
            end
    end

    def cambiar_letras_a_guiones_1
        return "_ " * @palabra_secreta.length
    end

    #(Metodo opcional que no era la mejor opcion)
    # def cambiar_letras_a_guiones_2
    #     for i in 0..@palabra_secreta.length-1
    #         print "_ "
    #     end
    # end
end