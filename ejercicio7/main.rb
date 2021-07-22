require_relative 'venta'

comando = ""
while comando != "n"
    venta = Venta.new
    venta.comenzar
    puts "¿Quiere realizar otro pedido? (s/n)"
    comando = gets.chomp
end

