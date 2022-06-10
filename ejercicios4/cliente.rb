#Clase: estructura que nos permite encapsular 
# datos y acciones - atributos y métodos.
class Cliente
    #datos - variables - atributos
    # @nombre
    #!!Esto hace lo mismo que lo que hicimos para @nombre en 1 sola linea.
    attr_accessor :correo 
    attr_accessor :celular
    attr_accessor :direccion
    attr_accessor :metodo_pago_favorito
    attr_accessor :edad
    attr_accessor :peso
    attr_accessor :mascota
    # attr_reader :ciudad
    # attr_writer :cantidad_compras
    #acciones - metodos
    #metodo de asignacion (setter)
    def nombre(valor_del_nombre)
        @nombre = valor_del_nombre
    end

    #metodo de devolucion (getter)
    def nombre
        return @nombre
    end
    def mostrar_info
        puts "Cliente: #{@nombre}, su mascota es: #{@mascota.nombre}"
    end
end