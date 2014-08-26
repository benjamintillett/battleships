require 'cell'

describe Cell do 
	it "should contain water on initialization" do 
		cell = Cell.new
		expect(cell.content).to eq :water 
	end
	it "should be able to add a ship" do
		cell = Cell.new
		cell.add_ship!
		expect(cell.content).to eq :ship
	end
	it "should not be hit when initialized" do 
		cell = Cell.new
		expect(cell).not_to be_hit 
	end
	it "should be able to be shot at" do
		cell = Cell.new
		cell.shoot!
		expect(cell).to be_shot
	end




end