
lista_palabras = ["ruby", "desarrollador", "programa", "computador", "windows", "visualcode", "rubyonrails", "github", "ubuntu", "profesor", "codigo"]
palabra_secreta = lista_palabras[rand(lista_palabras.length)]
palabra = palabra_secreta.split("")
palabra_guiones= ["_"]*palabra_secreta.length
intento = ""
intentos = 0
intentos_maximos = 5
sin_intentos = false


puts "Adivina la palabra secreta (Tienen que ver con el curso)"
puts "Escribe una letra para ir revelando la palabra"
puts "Tienes 5 vidas por letra\n"

while palabra_guiones != palabra and !sin_intentos
    print palabra_guiones
    letra_encontrada = false 
    if intentos < intentos_maximos
        intento = gets.chomp
        for i in 0..palabra.length
            if palabra[i] == intento
                palabra_guiones[i] = intento
                letra_encontrada = true
            end
        end
        if letra_encontrada == false
        intentos += 1
        puts "Te quedan #{5-intentos} vidas"
        end
    else
        sin_intentos = true
    end
end

if palabra_guiones == palabra
    puts "\nFelicitaciones Adivinaste! La palabra era: #{palabra_secreta}"
else
    puts "\nPerdiste! te qudaste sin vidas."
end