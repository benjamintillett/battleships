require 'game'
require 'Board'

describe Game do 
	let(:cell1) { double :cell }
	let(:cell2) { double :cell }
	let(:cell3) { double :cell }
	let(:cell4) { double :cell }
	let(:cell5) { double :cell }
	let(:cell6) { double :cell }
	let(:cell7) { double :cell }
	let(:cell8) { double :cell }
	let(:cell_hash) { {:A1 => cell1, :A2 => cell2 , :B1 => cell3, :B2 => cell4 } }
	let(:cell_hash2) { {:A1 => cell5, :A2 => cell6 , :B1 => cell7, :B2 => cell8 } }
	let(:player1) {double :player, name: "Player1", start_players_game: nil }
	let(:player2) {double :player, name: "Player2", start_players_game: nil }
	let(:ship) {double :ship }
	let(:cell) { double :cell }
	let(:game) {Game.new(cell_hash,cell_hash2)} 
	let(:board) {double :board}

	before { allow(game).to receive(:get_user_choice).and_return(:A1) }

	it "is initialised with two players" do 
		expect(game.player1).to be_an_instance_of Player
		expect(game.player2).to be_an_instance_of Player
	end
	it "tell the players to join it once created" do 
		expect(game.player1.game).to be_an_instance_of Game
		expect(game.player2.game).to be_an_instance_of Game

	end

	it "gets cell_location from player1 and tells player1 where place its ship" do 
		allow(game).to receive(:player1).and_return(player1) 
		expect(game.player1).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player1,ship)
	end

	it "gets cell_location from player2 and tells player2 where place its ship" do 
		allow(game).to receive(:player2).and_return(player2) 
		expect(game.player2).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player2,ship)
	end

	it " knows player is not ready to play after intialization" do 
		expect(game.ready?).to be false
	end

	it "it knows when player is ready to play" do
		allow(game).to receive(:player1).and_return(player1) 
		allow(game.player1).to receive(:add_ship_to).with(:A1,ship)
		game.get_player_to_place_ship(player1,ship)
		expect(game.ready?).to be true
	end

	it "gets cell_location from player1 and tells player2 to shoot that location on its board" do 
		allow(game).to receive(:player2).and_return(player2) 
		expect(game.player2).to receive(:shoot_cell_on_my_board).with(:A1)		
		game.get_player_to_shoot_its_board(player2)
	end	
	it "gets cell_location from player2 and tells player1 to shoot that location on its board" do 
		allow(game).to receive(:player1).and_return(player1)
		expect(game.player1).to receive(:shoot_cell_on_my_board).with(:A1)		
		game.get_player_to_shoot_its_board(player1)
	end	

	it "should be able to start game for the players" do 
		allow(game).to receive(:player1).and_return(player1)
		allow(game).to receive(:player2).and_return(player2)
		expect(player1).to receive(:start_players_game)
		expect(player2).to receive(:start_players_game)
		game.start_game
	end

	it "should be able to check when the game is finished" do
		allow(game).to receive(:board).and_return(board)
		expect(board).to receive(:game_over?)
		game.game_over?
	end



end





