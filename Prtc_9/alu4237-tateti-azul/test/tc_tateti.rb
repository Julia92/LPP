require 'test/unit'
require 'alu4237-tateti-azul'

class TestTicTacToe < Test::Unit::TestCase

def test_inteligente_inteligente
score=[]
300.times do
@game1=Alu4237::Tateti::Azul::Game.new Alu4237::Tateti::Azul::SmartPlayer, Alu4237::Tateti::Azul::SmartPlayer

score<<@game1.play
end
assert_equal(score.uniq.length,3)
end


def test_tonto_tonto
score=[]
300.times do
@game2=Alu4237::Tateti::Azul::Game.new Alu4237::Tateti::Azul::DumbPlayer, Alu4237::Tateti::Azul::DumbPlayer
score.push@game2.play
end
assert_equal(score.uniq.length, 3)
end

def test_inteligente_tonto
score=[]
300.times do
@game3=Alu4237::Tateti::Azul::Game.new Alu4237::Tateti::Azul::SmartPlayer, Alu4237::Tateti::Azul::DumbPlayer
score.push@game3.play
end
assert_equal(score.uniq.length, 3)
end

end
