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
             @ppt_obj.ganadoras.should=={:piedra=>:tijeras , :papel=>:piedra, :tijeras=>:papel}
          end

          it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
             @ppt_obj.obtener_humano('piedra').should == @ppt_obj.humano
          end

          it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
             @ppt_obj.obtener_maquina.should==@ppt_obj.maquina
          end

          it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
              @ppt_obj.resultados.should == [:gane, :perdi, :empate]
          end





end
    
