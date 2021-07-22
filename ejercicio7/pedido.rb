require 'faker'

class Pedido
    attr_reader :codigo
    attr_reader :total
    attr_accessor :productos
    attr_reader :fecha_creacion
    attr_accessor :fecha_entrega
    attr_reader :estado
    

    def initialize
        @codigo = Faker::Barcode.ean
        @total = 0
        @productos = []
        @fecha_creacion = Time.now.strftime("%d/%m/%Y")
        @fecha_entrega = Faker::Date.forward(days:2).strftime("%d/%m/%Y")
        @estado = "recibido"
    end
    def mostrar_resumen_pedido
        puts "\n====================================================="
        puts "Código:            #{self.codigo}"
        puts "Fecha creacion:    #{self.fecha_creacion}"
        puts "Fecha de Entrega:  #{self.fecha_entrega}"
        puts "Estado:            #{self.estado}"
        puts "====================================================="
        puts "\nLista de productos\n\n"
        self.productos.each do |detalles|
            puts "#{detalles.nombre}\t\t\💲#{detalles.precio}"
        end
        puts "\n====================================================="
        puts "El total de su compra es: \t\t💲#{suma_total}"
        puts "=====================================================\n\n"
    end

    def suma_total
        precios = self.productos.map do |producto|
            producto.precio
        end
        return precios.sum
    end
end