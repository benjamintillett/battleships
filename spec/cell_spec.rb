require 'cell'

describe Cell do 
	let(:ship) { double :ship}
	let(:water) { double :water } 
	let(:cell) { Cell.new(water) }
	
	it "Can intitalize with water" do 
		expect(cell.content).to eq water 
	end
	it "Is able to add a ship" do
		cell.add_ship!(ship)
		expect(cell.content).to eq ship
	end
	
	it "the contents of the cell is git able to be shot at" do 
		expect(cell.content).to receive(:receive_shot!)
		cell.shoot!
	end

	it "Is not shot when initialized" do 
		expect(cell).not_to be_shot 
	end

	it "Is marked as shot after being shot at" do
		allow(water).to receive(:receive_shot!)
		cell.shoot!
		expect(cell).to be_shot
	end

	it "Is not able to shoot at the same cell twice" do 
		allow(water).to receive(:receive_shot!)
		cell.shoot!
		expect{ cell.shoot! }.to raise_error 
	end

end