#! /usr/local/ruby/bin/ruby

require 'ppt'

     describe PiedraPapelTijera do
     before :each do
              @ppt_obj= PiedraPapelTijera.new(humano)
     end
    
          it "Debe existir una tirada para el humano" do
             @humano.initialize.should == humano.to_sym
          end
          
	  it "Debe existir una tirada para la maquina" do
	     @maquina.initialize.should == @tiradas.sample
	     @maquina.initialize.should == 0
          end
		
	  it "Debe existir una lista de tiradas validas" do
	     @tiradas = [ :piedra, :papel, :tijeras]
	  end
end
    
