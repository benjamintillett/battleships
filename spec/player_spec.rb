require 'player'

describe Player do


	context "On initialization:" do 

		it "has a board" do
			player = Player.new
			expect(player.board).to be_an_instance_of Board
		end

		# it "Has a name" do 
			
		# end





end