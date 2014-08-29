

class Board

	attr_reader :health, :cells

	def initialize(grid_size)
		@cells = Grid.new(10).cells
		@health = 0
		@in_play = false
		@game_over = false

	end

	def add_ship_to(x_coordinate,y_coordinate,ship)
		raise RuntimeError ,"Game is in play, you can no longer place ships" if in_play?
		@cells[x_coordinate,y_coordinate].add_ship!(ship)
		@health +=1
		self
	end

	def shoot_cell(x_coordinate,y_coordinate)
		raise RuntimeError , "Game has not started!!!" if @in_play == false
		@cells[x_coordinate,y_coordinate].shoot!
		decrement_health
	end

	def in_play?
		@in_play
	end

	def start_playing!
		@in_play = true
		self
	end

	def game_over?
		@game_over
	end

	def decrement_health
		@health -=1
		@game_over = true if @health == 0 
	end

end