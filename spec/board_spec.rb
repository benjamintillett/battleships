require 'board'
#require 'cell'
	
describe Board  do
	let(:cell1) { double :cell }
	let(:cell2) { double :cell }
	let(:cell3) { double :cell }
	let(:cell4) { double :cell }
	let(:cell_hash) { {:A1 => cell1, :A2 => cell2 , :B1 => cell3, :B2 => cell4 } }
	let(:board) { Board.new(cell_hash) }
	let(:ship) { double :ship }

	context "initialization:" do 

		it "can be initialized with an hash of cells" do 
			expect(board.cells).to eq cell_hash
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
			expect(cell1).to receive(:add_ship!).with(ship)  
			board.add_ship_to(:A1,ship)
		end

		it "health increments by 1 if ship is added cell" do 
			allow(cell1).to receive(:add_ship!).with(ship)  
			board.add_ship_to(:A1,ship)
			expect(board.health).to eq 1 
		end

		it "board cannot shoot" do 
			allow(cell1).to receive(:shoot!)
			expect{ board.shoot_cell(:A1) }.to raise_error "Game has not started!!!"
		end

	end	


	context "a board in play:" do 

		let(:board_in_play) { Board.new(cell_hash).start_playing }

		it "can shoot at a cell" do 
			expect(cell2).to receive(:shoot!)
			board_in_play.shoot_cell(:A2)
		end

		it "decrements its health by one if cell containing a ship is shot" do 
			allow(cell1).to receive(:add_ship!).with(ship)
			allow(cell1).to receive(:shoot!)  
			board_in_play.add_ship_to(:A1,ship)	
			board_in_play.shoot_cell(:A1)
			expect(board_in_play.health).to eq 0
		end

		it "is in play after it has been started" do
			board_in_play.start_playing
			expect(board_in_play).to be_in_play
		end

	end


end