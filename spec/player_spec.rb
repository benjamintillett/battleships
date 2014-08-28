require 'player'

describe Player do
	let(:board) { double :board, class: Board }
	let(:game) { double :game, class: Game }

	context "On initialization:" do 

		it "has a board" do
			player = Player.new('', board, game)
			expect(player.board.class).to eq Board
		end

		it "Has a name" do
			player = Player.new("Ben", board, game)
			expect(player.name).to eq "Ben"  
		end
		
		it "Has a game" do 
			player = Player.new("Ben", board, game)
			expect(player.game.class).to eq Game
		end

	end

	let(:player) {Player.new('Tester', board)}
	let(:ship) { double :ship, add_ship!: nil}

	it "can place a ship" do
		expect(player.board).to receive(:add_ship_to).with(:A1,ship)
		player.add_ship_to(:A1,ship)
	end 

	it "can shoot a cell location on my board" do
	 	expect(player.board).to receive(:shoot_cell).with(:A1)
	 	player.shoot_cell_on_my_board(:A1)
	 end



end