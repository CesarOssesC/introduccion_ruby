persona = "persona, jaime, edad, 80, nivel, básico"

nombre = persona.split(", ")[1].to_s
edad = persona.split(", ")[3].to_s
nivel = persona.split(", ")[5].to_s

if nivel == "básico"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es *" 
elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es **" 
elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es ***"
end

persona = "persona, camila, edad, 16, nivel, intermedio"

nombre = persona.split(", ")[1].to_s
edad = persona.split(", ")[3].to_s
nivel = persona.split(", ")[5].to_s

if nivel == "básico"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es *" 
elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es **" 
elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es ***"
end

persona = "persona, edgar, edad, 50, nivel, avanzado"

nombre = persona.split(", ")[1].to_s
edad = persona.split(", ")[3].to_s
nivel = persona.split(", ")[5].to_s

if nivel == "básico"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es *" 
elsif nivel == "intermedio"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es **" 
elsif nivel == "avanzado"
    puts "Hola, me llamo " + nombre + " y tengo " + edad + " años. Mi nivel es ***"
end