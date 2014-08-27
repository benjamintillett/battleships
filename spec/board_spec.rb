require 'board'
#require 'cell'
	
describe Board  do
	let(:cell1) { double :cell }
	let(:cell2) { double :cell }
	let(:cell3) { double :cell }
	let(:cell4) { double :cell }
	let(:cell_hash) { {:A1 => cell1, :A2 => cell2 , :B1 => cell3, :B2 => cell4 } }



	it "can be initialized with an hash of cells" do 
		board = Board.new(cell_hash)
		expect(board.cells).to eq cell_hash
	end

	let(:board) { Board.new(cell_hash) }		
	let(:ship) { double :ship }

	it "initialized with 0 health" do
		expect(board.health).to eq 0
	end

	it "can add a ship to a cell" do 
		expect(cell1).to receive(:add_ship!).with(ship)  
		board.add_ship_to(:A1,ship)
	end

	it "health increments by 1 if ship has been added to 1 cell" do 
		allow(cell1).to receive(:add_ship!).with(ship)  
		board.add_ship_to(:A1,ship)
		expect(board.health).to eq 1 
	end

	it "can shoot at a cell" do 
		board.start_playing
		expect(cell2).to receive(:shoot!)
		board.shoot_cell(:A2)
	end
	it "decrements its health by one if cell containing a ship is shot" do 
		board.start_playing
		allow(cell1).to receive(:add_ship!).with(ship)
		allow(cell1).to receive(:shoot!)  
		board.add_ship_to(:A1,ship)	
		board.shoot_cell(:A1)
		expect(board.health).to eq 0
	end

	it "is not in play when initialized" do 
		expect(board).not_to be_in_play
	end

	it "is in play after it has been started" do
		board.start_playing
		expect(board).to be_in_play
	end

	it "wont let you shoot if game is not in play" do 
		allow(cell1).to receive(:shoot!)
		expect{ board.shoot_cell(:A1) }.to raise_error "Game has not started!!!"
	end


end