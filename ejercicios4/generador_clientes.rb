require_relative "cliente"

class GeneradorClientes

    def self.generar_sin_mascotas(cantidad_clientes)
        lista_de_cliente = []
        for i in 0..cantidad_clientes
            cliente = Cliente.new
            cliente.nombre = Faker::Name.name
            cliente.correo = Faker::Internet.email(
                name: cliente.nombre,
                separatos: ".",
                domain: "ryo.cl"
            )
            lista_de_cliente << cliente
        end

        return lista_de_cliente

    end

    def self.generar_con_mascotas(cantidad)
        nuevos_clientes = []

        for i in 0..cantidad
            cliente = Cliente.new
            cliente.nombre = Faker::Name.name
            #asignación de mascota
            cliente.mascota = Mascota.new
            cliente.mascota.nombre = Faker::Creature::Name.name


            cliente.mostrar_mascotas
            nuevos_clientes << cliente
        end

        return nuevos_clientes

    end
end