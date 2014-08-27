require 'cell'

class Board

	attr_reader :health, :cells

	def initialize(cell_hash)
		@cells = cell_hash
		@health = 0
	end

	def add_ship_to(cell_location, ship)
		@cells[cell_location].add_ship!(ship)
	end

	def shoot_cell(cell_location)
		@cells[cell_location].shoot!
	end

end