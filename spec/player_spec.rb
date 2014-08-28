require 'player'

describe Player do
	let(:board) { double :board, class: Board }
	let(:game) { double :game, class: Game }
	let(:player) {Player.new("Ben", board, game)}
	let(:ship) { double :ship, add_ship!: nil}

	context "On initialization:" do 

		it "has a board" do
			expect(player.board.class).to eq Board
		end

		it "Has a name" do
			expect(player.name).to eq "Ben"  
		end
		
		it "Has a game" do 
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

	it "can shoot a cell location on an opponents board" do
		expect(game).to receive(:shoot_cell_on_opponents_board).with(:A1)
		player.shoot_opponents_board(:A1)
	end

end