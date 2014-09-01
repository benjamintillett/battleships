require 'PatrolBoat.rb'

describe PatrolBoat do 

	it "initializes with a health of 2" do 
		patrol_boat = PatrolBoat.new
		expect(patrol_boat.health).to eq 2
	end

it "ship has a name" do
	patrol_boat= PatrolBoat.new
	expect(patrol_boat.name).to eq "Patrol Boat"

end

end