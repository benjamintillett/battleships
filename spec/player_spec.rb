require 'player'

describe Player do
	let(:cell1) { double :cell }
	let(:cell2) { double :cell }
	let(:cell3) { double :cell }
	let(:cell4) { double :cell }	
	let(:cell_hash) { {:A1 => cell1, :A2 => cell2 , :B1 => cell3, :B2 => cell4 } }
	let(:board) { double :board, class: Board }
	let(:game) { double :game, class: Game }
	let(:player) {Player.new("Ben", cell_hash)}
	let(:ship) { double :ship, add_ship!: nil}

	context "On initialization:" do 

		it "creates a board" do
			expect(player.board.class).to eq Board
		end

		it "creates a board with correct cells" do 
			expect(player.board.cells).to eq cell_hash
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
		expect(player.board).to receive(:add_ship_to).with(:A1,ship)
		player.add_ship_to(:A1,ship)
	end 

	it "can shoot a cell location on my board" do
	 	expect(player.board).to receive(:shoot_cell).with(:A1)
	 	player.shoot_cell_on_my_board(:A1)
	 end

	it "knows when the game is over" do
		allow(player).to receive(:board).and_return(board)
		allow(board).to receive(:game_over?).and_return(true)
		expect(player.game_over?).to eq true	
	end

	it "can set it's board to in_play" do 
		allow(player).to receive(:board).and_return(board)
		player.start_players_game
		expect(player.board).to receive(:start_playing!)
	end




end