require 'gosu'

class Game < Gosu::Window
	def initialize
		super(800, 600, false)
	end
end

game = Game.new
game.show