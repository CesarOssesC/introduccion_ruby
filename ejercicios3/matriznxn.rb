# matriz = []
# n=0
# counter = 0
# counter_minimo = 1
# puts "Escribe un número para elegir el tamaño de la matriz"

# n = gets.chomp.to_i
# lista = (matriz.push("_"))*(n-1) << "x" 


# puts "#{lista}\n" 
# # lista.gsub(0)
# puts "#{lista[n-1]}"
# for n in 0..matriz.length


#     counter -= 1
# end
puts "Dibujaremos una matriz con una diagonal de X al centro"
puts "Escribe un número para el tamaño de la matriz"
puts "Escribe 0 para terminar el programa"

n=1
while n != 0
    n = gets.chomp.to_i

    for filas in 0..(n-1)

        for columnas in 0..(n-1)
            
            if filas+columnas == (n-1)
                print "X"
            else
                print "_"
            end
        end
        puts 
    end
    puts "========================================================="
    puts "Ingresa otro tamaño o escribe 0 para terminar el programa"

end