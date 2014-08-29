require 'yellow_submarine.rb'

describe YellowSubmarine do 

	it "initializes with a health of 3" do 
		sub = YellowSubmarine.new
		expect(sub.health).to eq 3
	end


end