require "ppt"
require "test/unit"

class TestJuego < Test::Unit::TestCase

  def setup
    tiradas = [:piedra,:papel,:tijeras]
    derrota = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    resultados = [:gane, :perdi,:empate]
    @ppt_obj = Juego.new(tiradas, derrota, resultados, "tijeras", "papel", "gane")
  end


  def test_play
    @ppt_obj.obtener_humano("piedra")
    score=[]
    30.times do
      score.push@ppt_obj.jugar
    end
    assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}")
  end

  def test_wrong_play
    assert_raise(TypeError) {@ppt_obj.obtener_humano('fuego')}
  end

  def test_variety
    @ppt_obj.obtener_humano(@ppt_obj.tiradas.sample.to_s)
    answers=[]
    20.times do
      answers.push@ppt_obj.jugar
    end
    assert(answers.uniq.length >= 3, "answers.uniq.length = #{answers.uniq.length} answers.length = #{answers.length}")
  end
end







