require 'player'

describe Player do

	let(:board) { double :board, class: Board }
	let(:game) { double :game, class: Game }
	let(:player) {Player.new("Ben", 10)}
	let(:ship) { double :ship, add_ship!: nil}

	context "On initialization:" do 

		it "creates a board" do
			expect(player.board.class).to eq Board
		end

		it "Has a name" do
			expect(player.name).to eq "Ben"  
		end
		
		it "can join a game" do 
			player.join_game(game)
			expect(player.game.class).to eq Game
		end

	end

	it "can place a ship" do
		expect(player.board).to receive(:add_ship_to).with(0,0,ship)
		player.add_ship_to(0,0,ship)
	end 

	it "can shoot a cell location on my board" do
	 	expect(player.board).to receive(:shoot_cell).with(1,0)
	 	player.shoot_cell_on_my_board(1,0)
	 end

	it "knows when the game is over" do
		allow(player).to receive(:board).and_return(board)
		allow(board).to receive(:game_over?).and_return(true)
		expect(player.game_over?).to eq true	
	end

	it "can set it's board to in_play" do 
		allow(player).to receive(:board).and_return(board)
		allow(player.board).to receive(:start_playing!)
		expect(player.board).to receive(:start_playing!)
		player.start_players_game
	end






end