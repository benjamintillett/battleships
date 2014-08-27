require 'cell'

describe Cell do 
	let(:cell) { Cell.new }
	let(:water) {double :water, class: Water}


	it "Contains water on initialization" do 
		expect(cell.content).to be_an_instance_of Water 
	end
	it "Is able to add a ship" do
		cell.add_ship!
		expect(cell.content).to eq :ship
	end
	
	it "able to be shot at" do 
		# water = double :water
		
		expect(cell.content).to receive(:receive_shot!)
		cell.shoot!
	end

	it "Is not shot when initialized" do 
		expect(cell).not_to be_shot 
	end

	it "Is marked as shot after being shot at" do
		cell.shoot!
		expect(cell).to be_shot
	end

	it "Is not able to shoot at the same cell twice" do 
		cell.shoot!
		expect{ cell.shoot! }.to raise_error 
	end





end