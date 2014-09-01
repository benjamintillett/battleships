require 'Destroyer.rb'

describe Destroyer do 

	it "initializes with a health of 3" do 
		DestroyerBoat = Destroyer.new
		expect(DestroyerBoat.health).to eq 3
	end

it "ship has a name" do
	DestroyerBoat = Destroyer.new
	expect(DestroyerBoat.ShipsName).to eq "Destroyer"

end

end