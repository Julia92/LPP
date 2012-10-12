#! /usr/local/ruby/bin/ruby

require "circunferencia"
require "test/unit"

class TestCircunferencia < Test::Unit::TestCase

   def test_simple1
      assert_equal(3.9788735772973833, Circunferencia.new().calculo(25) )
   end

   def test_simple2
      assert_equal(3.9788735772973833, Circunferencia.new().calculo(a) )
   end

   def test_simple3
      assert_block do
	[Circunferencia.new().calculo(-25)].any? { |num| num > 0.0}
	end
   end
   
   def test_simple4
      assert_in_delta(Circunferencia.new().calculo(25), 3.9788735772973833, 0.00000001)
   end

end
