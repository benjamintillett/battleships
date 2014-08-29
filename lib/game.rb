

class Game

attr_accessor  :player1, :player2


 	def initialize(cell_hash, cell_hash2)
		@player1 = Player.new("Player1",cell_hash)
		@player1.join_game(self)
		@player2 = Player.new("Player2",cell_hash2)
		@player2.join_game(self)
		@ready = false
	end


	def get_player_to_place_ship(player,ship)
	    puts "#{player.name} please enter cell"
		cell = get_user_choice
	    p cell
	    player.add_ship_to(cell, ship)
	    @ready = true
    end


    def get_user_choice
    	gets.chomp
    end

 	def ready?
 		@ready
 	end 

 	def get_player_to_shoot_its_board(player)
     puts "#{player1.name}'s choose which of #{player2.name}'s cells to shoot at" if player == player2
     puts "#{player2.name}'s choose which of #{player1.name}'s cells to shoot at" if player == player1
     cell = get_user_choice 
     player.shoot_cell_on_my_board(cell)
    end

    def start_game
    player1.start_players_game
	end


end

