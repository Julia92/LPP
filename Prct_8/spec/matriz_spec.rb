require 'matrices'
describe Matriz do
before :each do
@a=Matriz.new(3,3, [[1,2,3],[4,5,6],[7,8,9]])
@b=Matriz.new(2,2,[[Fracciones.new(1,2),Fracciones.new(3,4)],[Fracciones.new(1,2),Fracciones.new(3,4)]])
end

it "Deberia de almacenarse el numero de filas" do
@a.numeroFila.should==3
end
it "deberia de almacenarse el numero de columnas" do
@a.numeroColumna.should==3
end
it "Deberia de poder almacenar la matriz" do
@a.respond_to?("matriz")
end
it "Deberia de poder sumar dos matrices" do
@a.+(@a).should==[[2, 4, 6], [8, 10, 12], [14, 16, 18]]
@b.+(@b).should==[["1/1", "3/2"], ["1/1", "3/2"]]
end
it "Deberia de poder multiplicar dos matrices" do
@a.*(@a).should== [[30.0, 36.0, 42.0], [66.0, 81.0, 96.0], [102.0, 126.0, 150.0]]
end
end
