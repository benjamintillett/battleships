require 'board'

class Player 

	attr_reader :name, :game
	attr_accessor :board
	
	def initialize(name= "NoName", board, game)
		@board = board
		@name = name
		@game = game
	end

	def add_ship_to(cell, ship)
		board.add_ship_to(cell, ship)
	end

	def shoot_cell_on_my_board(cell) #receiving opponents shots
		board.shoot_cell(cell)
	end

	def shoot_opponents_board(cell)
		game.shoot_cell_on_opponents_board(cell)
	end



end