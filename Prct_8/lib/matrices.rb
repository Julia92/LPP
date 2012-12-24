require 'fracciones'
class Matriz
attr_accessor :numeroColumna, :numeroFila, :matriz

def initialize(filas, columnas, vec)
	
        @numeroFila=filas
        @numeroColumna=columnas
        @matriz=vec
end

def +(m)
matr_resul=Array.new
for i in (1..@numeroFila)
        score=[]
        for j in (1..@numeroColumna)
        score<<(matriz[i-1][j-1]+m.matriz[i-1][j-1])
        end
matr_resul.push(score)
end

matr_resul
end

def *(m)
matr_resul=Array.new
@var=0.0
for i in (1..@numeroFila)
        score=[]
        for j in (1..m.numeroColumna)
        @var=0.0
        for k in (1..@numeroColumna)
	@var=@var+(matriz[i-1][k-1]*m.matriz[k-1][j-1])
	end
        score.push(@var)
        end
matr_resul.push(score)
end
matr_resul
end
end
a=Matriz.new(3,3, [[1,2,3],[4,5,6],[7,8,9]])

print a.+(a)
puts "Otra matriz"
print a*a

