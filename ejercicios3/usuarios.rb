require 'securerandom'


comando = ""
lista_usuarios = []
puts "Ingrese los nombres del trabajador para generar contraseñas"
puts "Si desea cerrar el programa escirba \"salir\""

while comando != "salir"
    puts "Ingrese el nombre del Trabajador"
    nombre_usuario = gets.chomp
    comando = nombre_usuario
    if comando != "salir"
        password = SecureRandom.alphanumeric(10)
        usuario_hash = {nombre: nombre_usuario, pass: password}
        lista_usuarios << usuario_hash
        puts "Registro Guardado"
        #puts "nombre: #{usuario_hash[:nombre]} \t pass: #{usuario_hash[:password]}"
    end
    
end
puts "===\t==="
for usuario in lista_usuarios
    puts "#{usuario[:nombre]} \t #{usuario[:pass]}"
end

#File.write("trabajadores_pass.txt", lista_usuarios)


comando = ""
puts "Ingrese el nombre del trabajador para conocer sus datos"
puts "Escribir salir para cerrar"

while comando != "salir"
    nombre_filtro = gets.chomp
    encontramos_al_trabajador = false
    comando = nombre_filtro
    if comando != "salir"
        for u in lista_usuarios
            if nombre_filtro == u[:nombre]
                encontramos_al_trabajador = true
                puts "#{u[:nombre]} \t pass: #{u[:pass]}"
            end
        end
        if encontramos_al_trabajador == false
            puts "No se encontró el trabajador"
            
        end
    end
    
end