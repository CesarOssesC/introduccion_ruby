class GeneradorTexto


    def self.letras(cantidad_para_crear)
        abecedario = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","ñ","o","p","r","s","t","u","v","w","x","y","z"]
        lista_letras = Array.new
        for i in 1..cantidad_para_crear
            lista_letras << abecedario.sample
        end   
        return lista_letras
    end
    
end