require 'PatrolBoat.rb'

describe PatrolBoat do 

	it "initializes with a health of 2" do 
		Patrol_Boat = PatrolBoat.new
		expect(Patrol_Boat.health).to eq 2
	end

it "ship has a name" do
	Patrol_Boat= PatrolBoat.new
	expect(Patrol_Boat.ShipsName).to eq "Patrol Boat"

end

end