class Calculadora
    


    def sumar(a, b)
        c = a + b
        return c

    end

    def restar(a, b)
        c = a - b
        return c
    end

    def multiplicar(a, b)
        c = a * b
        return c
    end

    def dividir(a, b)
        if b == 0
            return "no se puede dividir por 0"
        else
            c = a / b
            return c
        end
    end
end

