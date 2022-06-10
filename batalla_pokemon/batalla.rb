require_relative "generador_pokemon"
require_relative "gestor_datos"

class Batalla
    attr_reader :pokemon_local
    attr_reader :pokemon_visitante
    attr_reader :ganador


    def initialize(fuerte = true)
        if fuerte == true
            @pokemon_local = GeneradorPokemones.generar_fuertes
            @pokemon_visitante = GeneradorPokemones.generar_fuertes
        else
            @pokemon_local = GeneradorPokemones.generar
            @pokemon_visitante = GeneradorPokemones.generar
        end
    end
    
    def simular
        puts "====================================================================================="
        puts "Iniciando batalla entre #{@pokemon_local.datos} y #{@pokemon_visitante.datos}" 
        puts "====================================================================================="
        sleep 1
        while @pokemon_local.hp > 0 and @pokemon_visitante.hp > 0
        if @pokemon_local.hp > 0
            @pokemon_local.atacar(@pokemon_visitante)
            if @pokemon_visitante.hp <= 0
                puts "#{@pokemon_local.nombre} atacó a #{@pokemon_visitante.nombre} y lo dejó inconciente!"
            else
                puts "#{@pokemon_local.nombre} atacó a #{@pokemon_visitante.hp_resultante}"
            end
            puts "=============================================="
        end
        
        sleep 1
        if @pokemon_visitante.hp > 0
            @pokemon_visitante.atacar(@pokemon_local)
            if @pokemon_local.hp <= 0
                puts "#{@pokemon_visitante.nombre} atacó a #{@pokemon_local.nombre} y lo dejó inconciente!"
            else
                puts "#{@pokemon_visitante.nombre} atacó a #{@pokemon_local.hp_resultante}"
            end
            puts "=============================================="
        end
        # sleep 1
        # puts "Después del ataque"
        # puts @pokemon_local.inspect
        # puts @pokemon_visitante.inspect
        
        end

        quien_gano
        
    end
    
    def quien_gano   
            if @pokemon_local.hp > 0
                @ganador = @pokemon_local
                puts "El GANADOR es #{@pokemon_local.nombre}!!!"
            else @pokemon_visitante.hp > 0
                @ganador = @pokemon_visitante
                puts "El GANADOR es #{@pokemon_visitante.nombre}!!!"
            end
            puts "=============================================="
            GestorDatos.generar_csv(self)
    end
    
end