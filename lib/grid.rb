require 'matrix'


class Grid

	attr_reader :size, :cells

	def initialize(size)
		@size 	= size
		@cells 	= build_grid
	end

	def build_grid
		Matrix.build(10) { Cell.new }
	end
end