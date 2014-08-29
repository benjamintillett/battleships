require 'board'
#require 'cell'
	
describe Board  do
	let(:cell1) { double :cell }
	let(:cell2) { double :cell }
	let(:cell3) { double :cell }
	let(:cell4) { double :cell }
	let(:board) { Board.new(10) }
	let(:ship) { double :ship }

	context "initialization:" do 

		it "can be initialized with an matrix of cells" do 
			expect(board.cells[9,9]).to be_an_instance_of Cell
		end

		it " is initialized with 0 health" do
			expect(board.health).to eq 0
		end

		it "is not in play when initialized" do 
			expect(board).not_to be_in_play
		end
	end

	context "while setting up the board" do 

		it "can add a ship to a cell" do 
			expect(board.cells[0,0]).to receive(:add_ship!).with(ship)  
			board.add_ship_to(0,0,ship)
		end

		it "health increments by 1 if ship is added cell" do   
			board.add_ship_to(0,0,ship)
			expect(board.health).to eq 1 
		end

		fit "board cannot shoot" do 
			allow(cell1).to receive(:shoot!)
			expect{ board.shoot_cell(0,0) }.to raise_error "Game has not started!!!"
		end

	end	


	context ": a board in play:" do 

		let(:board_in_play) { Board.new(10).start_playing! }
		let(:board_in_play_with_ship) { Board.new(10).add_ship_to(0,0,ship).start_playing! }


		it "should not be able to add ship" do 
			expect{ board_in_play.add_ship_to(0,0,ship) }.to raise_error "Game is in play, you can no longer place ships"
		end

		it "can shoot at a cell" do 
			expect(board_in_play.cells[0,1]).to receive(:shoot!)
			board_in_play.shoot_cell(0,1)
		end

		it "decrements its health by one if cell containing a ship is shot" do 	
			board_in_play_with_ship.shoot_cell(0,1)
			expect(board_in_play_with_ship.health).to eq 0
		end

		it "is in play after it has been started" do
			board_in_play.start_playing!
			expect(board_in_play).to be_in_play
		end

		it "knows when all ships have been sunk" do 
			allow(ship).to receive(:receive_shot!)  
			board_in_play_with_ship.shoot_cell(0,0)
			expect(board_in_play_with_ship.game_over?).to be true 
		end

		fit "knows when all ships have not been sunk" do 
			allow(cell1).to receive(:add_ship!).with(ship)
			allow(cell1).to receive(:shoot!)  	
			expect(board_in_play_with_ship.game_over?).to be false 
		end
	end
end