require_relative '../lib/observador_teclado'

RSpec.describe ObservadorTeclado do
    
    it "cuando la cadena esta bien" do
        guia = "a b d a e f e"
        
        letra_nueva = "a b d"
        resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)


        expect(resultado).to eq(true)
    end

    it "cuando la cadena esta mal" do
        guia = "a b d a e f e"
        
        letra_nueva = "abd"
        resultado = ObservadorTeclado.validar_con_espacios(guia, letra_nueva)

        expect(resultado).to eq(false)
    end



end