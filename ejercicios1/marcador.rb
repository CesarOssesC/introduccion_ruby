#datos de entrada
puts "Ingrese un marcador: "
marcador = gets #string

marcador_local = marcador.split("-")[0].to_i
marcador_visitante = marcador.split("-")[1].to_i

# puts marcador_local > marcador_visitante
# puts marcador_local < marcador_visitante
# puts marcador_local == marcador_visitante

#desarrollo lógica condicionales

if marcador_local > marcador_visitante
    mensaje1 = "El equipo local es el ganador"
    puts mensaje1
elsif marcador_local < marcador_visitante
    mensaje2 = "El equipo visitante es el ganador"
    puts mensaje2
elsif marcador_local == marcador_visitante
    mensaje3 = "Empate"
    puts mensaje3
end



#datos de salida
# mensaje1 = "El equipo local es el ganador"
# mensaje2 = "El equipo visitante es el ganador"
# mensaje3 = "Empate"
