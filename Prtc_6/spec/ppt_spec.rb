#! /usr/local/ruby/bin/ruby

require 'ppt'

     describe PiedraPapelTijera do
     before :each do
              @ppt_obj= PiedraPapelTijera.new
     end
    
          it "Debe existir una tirada para el humano" do
             @ppt_obj.humano.should == :tijeras
          end
          
	  it "Debe existir una tirada para la maquina" do
	     @ppt_obj.maquina.should == :papel
          end

	  it "Debe existir una lista de tiradas validas" do
	     @ppt_obj.tiradas.should == [ :piedra, :papel, :tijeras]
	  end

          it "Debe existir una lista de jugadas posibles y quien gana" do
             @ppt_obj.ganadoras.should == {:piedra=>:tijeras , :papel=>:piedra, :tijeras=>:papel}
          end

          it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
             @ppt_obj.obtener_humano('piedra').should == @ppt_obj.humano
          end

          it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
             @ppt_obj.obtener_maquina.should == @ppt_obj.maquina
          end

          it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
              @ppt_obj.resultados.should == [:gane, :perdi, :empate]
          end

          it "Debe existir un resultado para un juego, desde el punto de vista de lamaquina" do
             @ppt_obj.resultado.should == :gane
          end

          it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
             @ppt_obj.jugar.should == @ppt_obj.resultado
          end
	 
 	  it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
             vector=[]
             30.times do
                vector.push@ppt_obj.obtener_maquina
              end
             vector.uniq.length.should == @ppt_obj.tiradas.length
          end  

          it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
             vector=[]
             30.times do
                vector.push@ppt_obj.jugar
              end
	     vector.uniq.length.should == @ppt_obj.resultados.length
         end
end
    
