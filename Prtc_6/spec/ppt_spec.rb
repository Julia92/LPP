#! /usr/local/ruby/bin/ruby

require 'ppt'

     describe PiedraPapelTijera do
     before :each do
              @ppt_obj= PiedraPapelTijera.new
     end
    
          it "Debe existir una tirada para el humano" do
             @ppt_obj.humano.should == 0
          end
          
	  it "Debe existir una tirada para la maquina" do
	     @ppt_obj.maquina.should == 0
          end

	  it "Debe existir una lista de tiradas validas" do
	     @ppt_obj.tiradas.should == [ :piedra, :papel, :tijeras]
	  end

          it "Debe existir una lista de jugadas posibles y quien gana" do
             @ppt_obj.ganadoras.should=={:piedra=>:tijeras , :papel=>:piedra, :tijeras=>:papel}
          end

end
    
