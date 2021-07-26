require_relative '../lib/generador_texto'

RSpec.describe GeneradorTexto do
    
    context "generar texto" do  
        
        it "con solo letras" do
            resultado_letras = GeneradorTexto.letras(10)

            expect(resultado_letras.count).to eq(10)
            puts "========================"
            puts resultado_letras

            suma_letras = 0 
            resultado_letras = GeneradorTexto.letras(15)
            resultado_letras.each do |letra|
                suma_letras += letra.length
            end
            expect(suma_letras).to eq(15)
        end

        it "con palabras cortas" 

        it "con combinaciones" 
    end    
end