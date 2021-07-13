puts "Ingresa tu nombre, edad, nivel"

persona = gets.chomp

nombre = persona.split(", ")[0].to_s
edad = persona.split(", ")[1].to_s
nivel = persona.split(", ")[2].to_s

if nivel == "básico"
    puts "Hola, me llamo " + nombre + ", tengo " + edad + " años y mi nivel es *" 
elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + ", tengo " + edad + " años y mi nivel es **" 
elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + ", tengo " + edad + " años y mi nivel es ***"
end