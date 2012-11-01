#! /usr/local/ruby/bin/ruby

require 'ppt'

     describe PiedraPapelTijera do
     before :each do
              @ppt_obj= PiedraPapelTijera.new
     end
    
          it "Debe existir una tirada para el humano" do
             @humano.initialize.should == 0
          end
          
	  it "Debe existir una tirada para la maquina" do
	     @maquina.initialize.should == 0
          end

end
    
