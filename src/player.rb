require 'gosu'

class Player
	def initialize image_top_left_x, image_top_left_y, width, height, screen_w, screen_h
		@image_top_left_x = image_top_left_x
		@image_top_left_y = image_top_left_y
		@width = width
		@height = height
		@screen_w = screen_w
		@screen_h = screen_h
		@x = @screen_w/2 -@width/2
		@y = @screen_h - 80 - @height
		@v = 2
		@dx = @dy = 0
		
	end
	
	def move
		@dy = 0
		@dx = 0
		@dy = -@v if Gosu.button_down? Gosu::KB_W
		@dy = @v if Gosu.button_down? Gosu::KB_S
		@dx = -@v if Gosu.button_down? Gosu::KB_A
		@dx = @v if Gosu.button_down? Gosu::KB_D
		@x = @x + @dx
		@y = @y + @dy
		@x = 0 if @x < 0
		@x = @screen_w - @width if @x + @width > @screen_w
		@y = 0 if @y < 0
		@y = @screen_h - @height if @y + @height > @screen_h
		
	end
	
	def draw_from_sprite_sheet image
		offset = 0
		case @dx
		when 0
			offset = 0
		when -@v
			offset = (@width + 2)*2
		when @v
			offset = @width + 2
		end
		image.subimage(@image_top_left_x  + offset, @image_top_left_y, @width, @height).draw(@x, @y, 0)
	end
end