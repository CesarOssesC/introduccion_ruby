a = 17
numero = 0
while numero != a
    puts "Adivina el número!"
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