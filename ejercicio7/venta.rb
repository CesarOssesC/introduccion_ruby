require_relative 'generador_productos'
require_relative 'pedido'

class Venta

    attr_reader :pedido
    attr_reader :inventario

    def initialize
        crear_inventario
        mostrar_inventario
        crear_pedido
    end

    def crear_inventario
        @inventario =[]
        10.times do
            @inventario << GeneradorProductos.generar
        end
    end

    def mostrar_inventario
        puts "\n===== \t Mi Tienda \t ====="
        puts "\nInventario: 📦\n\n"
        @inventario.each do |producto|
            puts "#{producto.codigo}  #{producto.nombre}\t\t\t$#{producto.precio}\t #{producto.marca}\t#{producto.categoria}"
        end
        puts "\n============================================================\n"
    end

    def crear_pedido
        @pedido = Pedido.new

    end

    def comenzar
        codigo_producto = ""
        while codigo_producto != "pagar"
            print "Ingrese el código del producto: "
            codigo_producto = gets.chomp
            if codigo_producto != "pagar"    
                producto_encontrado = @inventario.select do |producto|
                    producto.codigo == codigo_producto
                end

                if producto_encontrado.count == 0
                    puts "El código: #{codigo_producto}, no está en el inventario."
                else
                    @pedido.productos << producto_encontrado[0]
                    puts "El producto #{codigo_producto}, fue agregado al pedido"
                end
            end
        end
        @pedido.mostrar_resumen_pedido
        
        
    end
end