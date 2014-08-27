require 'player'

describe Player do


	context "On initialization:" do 

		it "has a board" do
			player = Player.new
			expect(player.board).to be_an_instance_of Board
		end

		it "Has a name" do
			player = Player.new("Ben")
			expect(player.name).to eq "Ben"  
		end
	end

	let(:board) { double :board }
	let(:ship) { double :ship }

	it "can place a ship" do
		player = Player.new
		expect(board).to receive(:add_ship_to).with(:A1,ship)
		player.add_ship_to(:A1,ship)
	end 







end