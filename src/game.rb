require_relative 'game_window'

class Game
	def initialize
		@main_window = GameWindow.new 800, 600
	end
	
	def start
		@main_window.show
	end
end
