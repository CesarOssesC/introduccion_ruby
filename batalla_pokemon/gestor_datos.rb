require 'csv'

class GestorDatos
    def self.generar_csv(batalla)
        if File.exist? 'batalla.csv'
            CSV.open("batalla.csv", "a") do |csv|
                csv << [batalla.pokemon_local.nombre, 
                batalla.pokemon_visitante.nombre, 
                batalla.ganador.nombre, 
                Time.now]
            end
        else
            CSV.open("batalla.csv", "wb") do |csv|
                csv << ["Local", "Visita", "Ganador", "Fecha"]
                csv << [batalla.pokemon_local.nombre, 
                        batalla.pokemon_visitante.nombre, 
                        batalla.ganador.nombre, 
                        Time.now]
            end
        end
    end
end