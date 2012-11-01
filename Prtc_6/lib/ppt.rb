#! /usr/local/ruby/bin/ruby

class PiedraPapelTijera
   attr_accessor :humano, :maquina, :tiradas, :ganadoras, :resultados

    def initialize  
      @humano = :tijeras
      @maquina = :papel
      @tiradas = [ :piedra, :papel, :tijeras]
      @ganadoras = {:piedra=>:tijeras , :papel=>:piedra, :tijeras=>:papel}
      @resultados = [:gane, :perdi, :empate]

    end

   def obtener_humano(jugada)
     @humano = jugada.to_sym
   end
   def obtener_maquina
     @maquina = @tiradas.sample
   end
end

