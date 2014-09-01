require 'yellow_submarine.rb'

describe YellowSubmarine do 

	it "initializes with a health of 3" do 
		sub = YellowSubmarine.new
		expect(sub.health).to eq 3
	end

it "ship has a name" do
	sub = YellowSubmarine.new
	expect(sub.ShipsName).to eq "submarine"

end

end