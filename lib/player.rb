

class Player 

	attr_reader :name, :game
	attr_accessor :board
	
	def initialize(name= "NoName", board_size)
		@board = Board.new(board_size)
		@name = name
	end

	def join_game(game)
		@game = game 
	end

	def add_ship_to(x_coordinate,y_coordinate,ship)
		board.add_ship_to(x_coordinate,y_coordinate, ship)
	end

	def shoot_cell_on_my_board(x_coordinate,y_coordinate) #receiving opponents shots
		board.shoot_cell(x_coordinate,y_coordinate)
	end
    
   
	def game_over?
		board.game_over?
	end

end
