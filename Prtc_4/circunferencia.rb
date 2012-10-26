#! /usr/local/ruby/bin/ruby

class Circunferencia

    def initialize()
       # num.is_a? (Numeric)
        @x = 0.0
    end

    def calculo (perimetro)
         @x = perimetro / (2.0 * Math::PI)
#        puts "El radio es #{@x}"
    end

end

 # a = Circunferencia.new()
 # a.calculo(25) 


