class Fracciones
attr_accessor :numerador, :denominador

def initialize(n, d)
@numerador = n/mcd(n, d)
@denominador = d/mcd(n, d)
end

def mcd(n, d)
d == 0 ? n : mcd(d, n % d)
end

def to_s
"#{numerador}/#{denominador}"
end

def to_f
@numerador/@denominador
end

def ==(other)
@numerador==other.numerador && @denominador==other.denominador
end

def abs
if @numerador < 0 ||  @denominador < 0
(-1)*@numerador/@denominador
elsif 
@numerador/@denominador
end
end

def reciprocal
"#{@denominador}/#{@numerador}"
end

def -@
"#{-numerador}/#{denominador}"
end

def +(other)

max=mcd(@numerador*other.denominador+other.numerador*@denominador, @denominador*other.denominador)
"#{(@numerador*other.denominador+other.numerador*@denominador)/max}/#{(@denominador*other.denominador)/max}"

end

def -(other)

max=mcd(@numerador*other.denominador-other.numerador*@denominador, @denominador*other.denominador)
"#{(@numerador*other.denominador-other.numerador*@denominador)/max}/#{(@denominador*other.denominador)/max}"
end

def *(other)
max=mcd(@numerador*other.numerador, @denominador*other.denominador)
"#{(@numerador*other.numerador)/max}/#{(@denominador*other.denominador)/max}"
end

def /(other)
max=mcd(@numerador*other.denominador, @denominador*other.numerador)
"#{(@numerador*other.denominador)/max}/#{(@denominador*other.numerador)/max}"
end

def %(other)
aux=other.numerador
if other.numerador < 0
aux=other.numerador*-1
end
num2=@numerador-aux
denom2=@denominador*other.denominador
d=mcd(num2, denom2)
num2=num2/d
denom2=denom2/d
"#{num2}/#{denom2}"

end

include Comparable

def <=>(other)
@numerador/@denominador <=> other.numerador/other.denominador
end



end
