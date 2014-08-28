require 'board'

class Player 

	attr_reader :name
	attr_accessor :board
	
	def initialize(name= "NoName", board )
		@board = board
		@name = name
	end

	def add_ship_to(cell, ship)
		board.add_ship_to(cell, ship)
	end

	def shoot_cell(cell)
		board.shoot_cell(cell)
	end


end