require 'gosu'

class GameWindow < Gosu::Window
	def initialize width, height
		super(width, height, false)
		@sprite_sheet = Gosu::Image::new "assets/images/spritesheet.png"
		@player = @sprite_sheet.subimage 153, 386, 191-153, 420-386
		@x = 0
		@y = 0
	end
	
	def update
		dy = 0
		dx = 0
		dy = -1 if Gosu.button_down? Gosu::KB_W
		dy = 1 if Gosu.button_down? Gosu::KB_S
		dx = -1 if Gosu.button_down? Gosu::KB_A
		dx = 1 if Gosu.button_down? Gosu::KB_D
		@x = @x + dx
		@y = @y + dy
	end
	
	def draw
		@player.draw @x, @y, 0
	end
	
end