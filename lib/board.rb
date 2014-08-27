require 'cell'

class Board

	def initialize
		@cells = { :A1 => Cell.new, :A2 => Cell.new, :B1 => Cell.new, :B2 => Cell.new } 
	end

	def cells
		@cells
	end
end