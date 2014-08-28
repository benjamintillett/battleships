require 'game'
require 'Board'

describe Game do 
	let(:player1) {double :player }
	let(:player2) {double :player}
	let(:ship) {double :ship }
	let(:cell) { double :cell }
	let(:game) {Game.new(player1, player2)}

	before { allow(game).to receive(:get_user_choice).and_return(:A1) }

	it "can be initialised with two players" do 
		expect(game.player1).to eq player1
		expect(game.player2).to eq player2
	end

	it "gets cell_location from player1 and tells player1 where place its ship" do 
		expect(game.player1).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player1,ship)
	end

	it "gets cell_location from player2 and tells player2 where place its ship" do 
		expect(game.player2).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player2,ship)
	end

	it " knows player is not ready to play after intialization" do 
		expect(game.ready?).to be false
	end

	it "it knows when player is ready to play" do
		allow(game.player1).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player1,ship)
		expect(game.ready?).to be true
	end

	# it "gets cell_location from player1 and tells player2 to shoot that location on its board" do 
	# 	expect(game.player2).to receive(:shoot_cell_on_my_board).with(:A1)		
	# 	game.get_player_to_shoot_its_board(player2)
	# end	
	# 	it "gets cell_location from player2 and tells player1 to shoot that location on its board" do 
	# 	expect(game.player1).to receive(:shoot_cell_on_my_board).with(:A1)		
	# 	game.get_player_to_shoot_its_board(player1)
	# end	
end





