require 'gosu'

class Game
	def initialize
		@main_window = Gosu::Window.new(800, 600, false)
	end
	
	def start
		@main_window.show
	end
end
