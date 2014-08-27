require 'cell'

class Board

	attr_reader :health, :cells

	def initialize(cell_hash)
		@cells = cell_hash
		@health = 0
		@in_play = false

	end

	def add_ship_to(cell_location, ship)
		@cells[cell_location].add_ship!(ship)
		@health +=1
	end

	def shoot_cell(cell_location)
		raise RuntimeError , "Game has not started!!!" if @in_play == false
		@cells[cell_location].shoot!
		@health -=1
	end

	def in_play?
		@in_play
	end

	def start_playing
		@in_play = true
		self
	end



end