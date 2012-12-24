#! /usr/local/ruby/bin/ruby

require 'fracciones'
 
describe Fracciones do
before :each do
@frac_obj_1=Fracciones.new(1,2)
@frac_obj_2=Fracciones.new(4,2)
@frac_obj_3=Fracciones.new(2,4)
@frac_obj_4=Fracciones.new(-6,4)
@frac_obj_5=Fracciones.new(2,4)

end

it " Debe existir un numerador" do
@frac_obj_1.numerador.should==1
end

it " Debe existir un denominador" do
@frac_obj_1.denominador.should==2
end

it "Debe de estar en su forma reducida" do
@frac_obj_2.numerador.should==2
@frac_obj_2.denominador.should==1
end

it "Se debe invocar al metodo num() para obtener el numerador" do
@frac_obj_1.respond_to?("numerador")
end

it "Se debe invocar al metodo denom() para obtener el numerador" do
@frac_obj_1.respond_to?("denominador")
end

it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
@frac_obj_2.to_s.should=="2/1"
end

it "Se debe mostar por la consola la fraccion en formato flotante" do
@frac_obj_1.to_f.should==(1/2)
end

it "Se debe comparar si dos fracciones son iguales con ==" do
@frac_obj_1.should==@frac_obj_3
end

it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
@frac_obj_4.abs.should==(3/2)
end

it " Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
@frac_obj_2.reciprocal.should=="1/2"
end

it "Se debe calcular el opuesto de una fraccion con -" do
@frac_obj_2.-@.should=="-2/1"
end

it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
@frac_obj_2.+(@frac_obj_5).should=="5/2"
end

it " Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
@frac_obj_2.-(@frac_obj_5).should=="3/2"
end

it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
@frac_obj_2.*(@frac_obj_5).should=="1/1"
end

it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
@frac_obj_2./(@frac_obj_5).should=="4/1"
end

it " Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
@frac_obj_2.%(@frac_obj_4).should=="-1/2"
end

it "Se debe de poder comprobar si una fracion es menor que otra" do
@frac_obj_4.<=>(@frac_obj_2).should==-1
end

it "Se debe de poder comprobar si una fracion es mayor que otra" do
@frac_obj_2.<=>(@frac_obj_4).should==1
end

it " Se debe de poder comprobar si una fracion es menor o igual que otra" do
[-1,0].include?@frac_obj_4.<=>(@frac_obj_4)

end

it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
[1,0].include?@frac_obj_2.<=>(@frac_obj_4)
end

end

