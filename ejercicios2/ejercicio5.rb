original = ""

while original != "exit"
    
    puts "Escibe una frase y reemplazaré todas las letas a por x"
    original = gets

    nueva = original.gsub(/a/, 'x')

    puts nueva

end
