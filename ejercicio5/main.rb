require_relative "batalla"

batalla1 = Batalla.new
batalla1.simular

#TODA LA LÓGICA DE LA PELEA LA PASAMOS A BATALLA.RB Y LO ORDENAMOS BIEN EN LOS OTROS ARCHIVOS
# local = GeneradorPokemones.generar_local
# visita = GeneradorPokemones.generar_visitante

# puts local.inspect
# puts visita.inspect

# while local.hp > 0 and visita.hp >0
#     if local.hp > 0
#         local.atacar(visita)
#         puts "=============================================="
#         puts "#{local.nombre} atacó a #{visita.nombre}"
#         puts "=============================================="
#     end
#     sleep 1
#     if visita.hp > 0
#         visita.atacar(local)
#         puts "=============================================="
#         puts "#{visita.nombre} atacó a #{local.nombre}"
#         puts "=============================================="
#     end
#     sleep 1
#     puts "Después del ataque"
#     puts local.inspect
#     puts visita.inspect
    
# end
# puts "=============================================="
# if local.hp > 0
#     puts "El ganador es #{local.nombre}!!!"
# elsif visita.hp > 0
#     puts "El ganador es #{visita.nombre}!!!"

# end
# local.atacar(visita)
# visita.atacar(local)
# puts "Después del ataque"
# puts local.inspect
# puts visita.inspect