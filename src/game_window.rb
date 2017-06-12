require 'gosu'
require_relative 'player'

class GameWindow < Gosu::Window
	def initialize width, height
		super(width, height, false)
		@sprite_sheet = Gosu::Image::new "assets/images/spritesheet.png"
		@player = Player.new 153, 386, 191-153, 420-386, width, height
	end
	
	def update
		@player.move
	end
	
	def draw
		@player.draw_from_sprite_sheet @sprite_sheet
	end
	
end