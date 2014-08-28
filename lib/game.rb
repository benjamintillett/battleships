

class Game

attr_accessor  :player1, :player2


 	def initialize
		@player1 = Player.new()
		# @player1.set_game(self)
		@player2 = Player.new()
		@ready = false
	end


	def get_player_to_place_ship(player,ship)
	    puts "Player1 please enter cell"
		cell = get_user_choice
	    player.add_ship_to(cell, ship)
	    @ready = true
    end


    def get_user_choice
    	gets.chomp	
    end

 	def ready?
 		@ready
 	end 

 	# def get_player_to_shoot_its_board(player)
  #    puts "Player 1 choose which of player two's cells to shoot at"
  #    cell = get_user_choice 
  #    player.shoot_cell_on_my_board(cell)
  #   end
end

