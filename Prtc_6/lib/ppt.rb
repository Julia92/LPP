#! /usr/local/ruby/bin/ruby

class PiedraPapelTijera
   attr_accessor :humano, :maquina, :tiradas

    def initialize  
      @humano = 0
      @maquina = 0
      @tiradas = [ :piedra, :papel, :tijeras]
    end
end

