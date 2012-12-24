require "alu4237-tateti-azul/version"
require "alu4237-tateti-azul/jugador"
require "alu4237-tateti-azul/humano"
require "alu4237-tateti-azul/maquina"
require "alu4237-tateti-azul/tablero"


module Alu4237
  module Tateti
    module Azul
 
  class Game
    def initialize( player1, player2, random = true )
      if random and rand(2) == 1
        @x_player = player2.new("X")
        @o_player = player1.new("O")
      else
        @x_player = player1.new("X")
        @o_player = player2.new("O")
      end
      
      @board = Board.new([" "] * 9)
    end
    
    attr_reader :x_player, :o_player
    
    def play
      until @board.won?
        @board[@x_player.move(@board)] = @x_player.mark
        break if @board.won?
        
        @board[@o_player.move(@board)] = @o_player.mark
      end
      
      @o_player.finish @board
      @x_player.finish @board
     
  end
end

if __FILE__ == $0
  if ARGV.size > 0 and ARGV[0] == "-d"
    game = Alu4237::Tateti::Azul::Game.new Alu4237::Tateti::Azul::HumanPlayer,
                  Alu4237::Tateti::Azul::DumbPlayer
  else
    game = Alu4237::Tateti::Azul::Game.new Alu4237::Tateti::Azul::HumanPlayer,
                  Alu4237::Tateti::Azul::SmartPlayer
  end
  game.play
end
    end
  end
end


