require 'alu4237-tateti-azul'

describe Alu4237::Tateti::Azul::HumanPlayer do
	before :each do
		@jh = Alu4237::Tateti::Azul::HumanPlayer.new("X")
	end

	it "Debe existir un metodo move" do
		@jh.respond_to?("move").should == true
	end

	it "Debe existir un metodo finish" do
		@jh.respond_to?("finish").should == true
	end
end

describe Alu4237::Tateti::Azul::DumbPlayer do
	before :each do
		@jd = Alu4237::Tateti::Azul::DumbPlayer.new("X")
	end

	it "Debe existir un metodo move" do
		@jd.respond_to?("move").should == true
	end

	it "Los movimientos deben de ser aleatorios" do

		score=[]
		300.times do
			b=[" "]*9
			board=Alu4237::Tateti::Azul::Board.new(b)
			score.push@jd.move(board)
		end
		score.uniq.length.should==9
	end

end

describe Alu4237::Tateti::Azul::SmartPlayer do
	before :each do
		@js = Alu4237::Tateti::Azul::SmartPlayer.new("X")
	end

	it "Debe existir un metodo move" do
		@js.respond_to?("move").should == true
	end

end
