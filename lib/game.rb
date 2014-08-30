

class Game

attr_accessor  :player1, :player2


 	def initialize(size)
		@player1 = Player.new("Player1",size)
		@player1.join_game(self)
		@player2 = Player.new("Player2",size)
		@player2.join_game(self)
		@ready = false
	end


	def get_player_to_place_ship(player,ship)
	    puts "#{player.name}, where would you lke to shoot?"
	    x_coordinate = get_user_x_coordinate
		y_coordinate = get_user_y_coordinate
	    player.add_ship_to(x_coordinate,y_coordinate, ship)
	    @ready = true
    end


    def get_user_x_coordinate
    	puts "please enter the x coordinate"
    	gets.chomp.to_i
    end
    
    def get_user_y_coordinate
    	puts "please enter the y coordinate"
    	gets.chomp.to_i
    end


 	def ready?
 		@ready
 	end 

 	def get_player_to_shoot_its_board(player)
     	print_shot_request(player)
     	x_coordinate = get_user_x_coordinate
	 	y_coordinate = get_user_y_coordinate
     	player.shoot_cell_on_my_board(x_coordinate,y_coordinate)
    end

    def start_game
    	player1.start_players_game
    	player2.start_players_game
	end

	def game_over?
		board.game_over?
	end

	def print_shot_request(player)
		puts "#{player1.name}'s choose which of #{player2.name}'s cells to shoot at" if player == player2
     	puts "#{player2.name}'s choose which of #{player1.name}'s cells to shoot at" if player == player1
    end

end

