

class Player 

	attr_reader :name, :game
	attr_accessor :board
	
	def initialize(name= "NoName", cell_hash={})
		@board = Board.new(cell_hash)
		@name = name
	end

	def join_game(game)
		@game = game 
	end

	def add_ship_to(cell,ship)
		board.add_ship_to(cell, ship)
	end

	def shoot_cell_on_my_board(cell) #receiving opponents shots
		board.shoot_cell(cell)
	end
    
   
	def game_over?
		board.game_over?
	end

end
