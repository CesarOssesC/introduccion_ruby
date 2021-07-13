original = ""

while original != "exit"
    
    puts "Escibe una frase y reemplazaré todas las letas a por x"
    original = gets.chomp

    nueva = original.gsub(/([aeiou])/, '<\1>')

    puts nueva

end
