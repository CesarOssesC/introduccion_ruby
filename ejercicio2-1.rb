puts "Ingresa tu nombre, edad, nivel"

persona = gets

nombre = persona.split(", ")[0].to_s
edad = persona.split(", ")[1].to_s
nivel = persona.split(", ")[2].to_s

if nivel == "básico"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es *" 
elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es **" 
elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es ***"
end