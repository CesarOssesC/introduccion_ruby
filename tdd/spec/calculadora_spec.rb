require_relative '../lib/calculadora'

RSpec.describe Calculadora do

    context "sumar numeros" do
        it "cuando son iguales" do 
            #configuracion
            calc = Calculadora.new
            #ejecucion
            resultado = calc.sumar(2, 2)

            #expectativa
            expect(resultado).to eql(4)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.sumar(-1, 2)
            expect(resultado).to eql(1)
        end
        
        it "cuando los dos son negativos" do
            calc = Calculadora.new
            resultado = calc.sumar(-1, -2)
            expect(resultado).to eql(-3)
        end

        it "cuando los dos son positivos" do
            calc = Calculadora.new
            resultado = calc.sumar(1, 2)
            expect(resultado).to eql(3)
        end
    end

    context "restar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.restar(5, 5)
            expect(resultado).to eql(0)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.restar(-5, 5)
            expect(resultado).to eql(-10)
        end

        it "cuando los dos son positivos" do
            calc = Calculadora.new
            resultado = calc.restar(6, 5)
            expect(resultado).to eql(1)
        end

        it "cuando los dos son negativos" do
            calc = Calculadora.new
            resultado = calc.restar(-5, -5)
            expect(resultado).to eql(0)
        end
    end

    context "multiplicar numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.multiplicar(5, 5)
            expect(resultado).to eql(25)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.multiplicar(-5, 5)
            expect(resultado).to eql(-25)
        end

        it "cuando los dos son positivos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(6, 5)
            expect(resultado).to eql(30)
        end

        it "cuando los dos son negativos" do
            calc = Calculadora.new
            resultado = calc.multiplicar(-5, -5)
            expect(resultado).to eql(25)
        end
    end

    context "dividir numeros" do
        it "cuando son iguales" do
            calc = Calculadora.new
            resultado = calc.dividir(5, 5)
            expect(resultado).to eql(1)
        end

        it "cuando uno es negativo" do
            calc = Calculadora.new
            resultado = calc.dividir(-5, 5)
            expect(resultado).to eql(-1)
        end

        it "cuando los dos son positivos" do
            calc = Calculadora.new
            resultado = calc.dividir(10, 5)
            expect(resultado).to eql(2)
        end

        it "cuando los dos son negativos" do
            calc = Calculadora.new
            resultado = calc.dividir(-5, -5)
            expect(resultado).to eql(1)
        end

        it "cuando el denominador es 0" do
            calc= Calculadora.new
            resultado = calc.dividir(5, 0)
            expect(resultado).to eq("no se puede dividir por 0")
        end
    end

end