require 'board'

describe Board  do
	xit "should initiate with an array of cells" do 
		board1 = Board.new
		expect(board1.cells[:A1].class).to eq Cell 
	end
	xit "on initialization each cell should contain water" do 
		expect(board1.cells[:A1].content).to be :water
	end

end