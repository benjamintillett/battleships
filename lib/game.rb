

class Game

attr_accessor  :player1, :player2


 	def initialize(player1,player2)
		@player1 = player1
		@player2 = player2
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

end

