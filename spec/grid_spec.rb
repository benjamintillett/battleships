require 'grid'

describe Grid do 
	context "intialization:" do 
		it "has cell A1" do 
			grid = Grid.new(10)
			expect(grid.cells[0,0]).to be_an_instance_of Cell
		end
	end

end