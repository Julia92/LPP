#! /usr/local/ruby/bin/ruby

require 'fracciones'
 
    decribe Fracciones do
    before :each do
        @fracciones_obj = Fracciones.new
    end
    
     it "Debe existir un numerador" do
     @fracciones_obj.num.should == 0
     end   
end
