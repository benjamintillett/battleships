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

	it "initialized with 0 health" do
		expect(board.health).to eq 0
	end

	it "can add a ship to a cell" do 
		ship = double :ship
		expect(cell1).to receive(:add_ship!).with(ship)  
		board.add_ship_to(:A1,ship)
	end

	it "can shoot at a cell" do 
		expect(cell2).to receive(:shoot!)
		board.shoot_cell(:A2)
	end

end