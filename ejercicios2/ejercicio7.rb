ventas = []
valor = 0
suma= 0

puts "Este programa calculará automaticamente el total de tus ventas diarias \ny el promedio por ventas."
puts "Ingresa tus ventas, para terminar escribe \"calcular\""

while valor != "-1"
    valor = gets.chomp
        if valor != "-1"
            
            ventas.push(valor.to_i)
            
        end 
        
        
    
end
suma = ventas.sum
promedio = suma/ventas.length

    puts "El total de ventas del día es #{suma}"
puts "El promedio de tus ventas del día fue de #{promedio}"
