#! /usr/local/ruby/bin/ruby

class PiedraPapelTijera
   attr_accessor :humano, :maquina, :tiradas, :ganadoras

    def initialize  
      @humano = 0
      @maquina = 0
      @tiradas = [ :piedra, :papel, :tijeras]
      @ganadoras={:piedra=>:tijeras , :papel=>:piedra, :tijeras=>:papel}

    end
end

