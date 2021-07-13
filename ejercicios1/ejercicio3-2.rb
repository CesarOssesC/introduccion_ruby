a = rand(0-100)

numero = 0
puts "Adivina el número entre el 1 y el 100!"
while numero != a
    
    numero = gets.chomp.to_i

    if numero < a then
        puts "Muy abajo!"
    end

    if numero > a then
        puts "Muy arriba!"
    end

    if numero == a then
        puts "Adivinaste!"
    end

end