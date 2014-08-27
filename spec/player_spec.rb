require 'player'

describe Player do
	let(:board) { double :board, class: Board }

	context "On initialization:" do 

		it "has a board" do
			player = Player.new('', board)
			expect(player.board.class).to eq Board
		end

		it "Has a name" do
			player = Player.new("Ben", board)
			expect(player.name).to eq "Ben"  
		end
	end

	let(:player) {Player.new('Tester', board)}
	let(:ship) { double :ship, add_ship!: nil}

	it "can place a ship" do
		allow(board).to receive(:new).and_return board
		
		expect(player.board).to receive(:add_ship_to).with(:A1,ship)
		player.add_ship_to(:A1,ship)
	end 

	it "can shoot a cell location" do
		player.shoot_cell(:A1)
		expect(board).to receive(:shoot_cell).with(cell_location)
	end






end