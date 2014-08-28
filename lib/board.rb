

class Board

	attr_reader :health, :cells

	def initialize(cell_hash)
		@cells = cell_hash 
		@health = 0
		@in_play = false
		@game_over = false

	end

	def add_ship_to(cell_location, ship)
		raise RuntimeError ,"Game is in play, you can no longer place ships" if in_play?
		@cells[cell_location].add_ship!(ship)
		@health +=1
		self
	end

	def shoot_cell(cell_location)
		raise RuntimeError , "Game has not started!!!" if @in_play == false
		@cells[cell_location].shoot!
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